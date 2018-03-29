//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     Figma data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_FIGMA_HPP__
#define __QUICKTYPE_FIGMA_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * A geographical coordinate
     */
    struct Figma {
        std::unique_ptr<double> latitude;
        std::unique_ptr<double> longitude;
    };
    
    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }
    
    template <typename T>
    inline std::unique_ptr<T> get_optional(const json &j, const char *property) {
        if (j.find(property) != j.end())
            return j.at(property).get<std::unique_ptr<T>>();
        return std::unique_ptr<T>();
    }
}

namespace nlohmann {
    template <typename T>
    struct adl_serializer<std::unique_ptr<T>> {
        static void to_json(json& j, const std::unique_ptr<T>& opt) {
            if (!opt)
                j = nullptr;
            else
                j = *opt;
        }

        static std::unique_ptr<T> from_json(const json& j) {
            if (j.is_null())
                return std::unique_ptr<T>();
            else
                return std::unique_ptr<T>(new T(j.get<T>()));
        }
    };

    inline void from_json(const json& _j, struct quicktype::Figma& _x) {
        _x.latitude = quicktype::get_optional<double>(_j, "latitude");
        _x.longitude = quicktype::get_optional<double>(_j, "longitude");
    }

    inline void to_json(json& _j, const struct quicktype::Figma& _x) {
        _j = json::object();
        _j["latitude"] = _x.latitude;
        _j["longitude"] = _x.longitude;
    }
}

#endif
