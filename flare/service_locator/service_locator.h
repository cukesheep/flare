//
// Created by cukesheep on 2025/7/3.
//
#pragma once

#include<map>
#include<string>
#include<iostream>

#include "service.h"

#include<concepts>
#include<type_traits>


#ifndef SERVICE_LOCATOR_H
#define SERVICE_LOCATOR_H


class ServiceLocator {
public:
    template<class T>
    static void provide(Service *service) {
        const std::string name=typeid(T).name();
        services_->emplace(name,service);
    }

    template<class T>
    static T* get() {
        std::string name=typeid(T).name();
        if (services_->find(name)!=services_->end()) {
            return reinterpret_cast<T*>((*services_)[name]);
        }
        return nullptr;
    }
private:
    static std::map<std::string,Service*> *services_;
};

auto ServiceLocator::services_=new std::map<std::string,Service*>;
#endif //SERVICE_LOCATOR_H
