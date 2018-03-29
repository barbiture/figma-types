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
     * A description of a user
     */
    struct CommentUser {
        std::string handle;
        std::string img_url;
    };

    /**
     * A comment or reply left by a user
     */
    struct Comment {
        /**
         * Unique identifier for comment
         */
        std::string id;
        std::unique_ptr<struct CommentUser> user;
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

    inline void from_json(const json& _j, struct quicktype::CommentUser& _x) {
        _x.handle = _j.at("handle").get<std::string>();
        _x.img_url = _j.at("img_url").get<std::string>();
    }

    inline void to_json(json& _j, const struct quicktype::CommentUser& _x) {
        _j = json::object();
        _j["handle"] = _x.handle;
        _j["img_url"] = _x.img_url;
    }

    inline void from_json(const json& _j, struct quicktype::Comment& _x) {
        _x.id = _j.at("id").get<std::string>();
        _x.user = quicktype::get_optional<struct quicktype::CommentUser>(_j, "user");
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["user"] = _x.user;
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
