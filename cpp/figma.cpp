//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     Comment data = nlohmann::json::parse(jsonString);
//     User data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_COMMENT_USER_HPP__
#define __QUICKTYPE_COMMENT_USER_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * A comment or reply left by a user
     */
    struct Comment {
        /**
         * Unique identifier for comment
         */
        std::string id;
    };

    /**
     * A description of a user
     */
    struct User {
        std::string handle;
        std::string img_url;
    };
    
    inline json get_untyped(const json &j, const char *property) {
        if (j.find(property) != j.end()) {
            return j.at(property).get<json>();
        }
        return json();
    }
}

namespace nlohmann {
    inline void from_json(const json& _j, struct quicktype::Comment& _x) {
        _x.id = _j.at("id").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["id"] = _x.id;
    }

    inline void from_json(const json& _j, struct quicktype::User& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::User& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }
}

#endif
