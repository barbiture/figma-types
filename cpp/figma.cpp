//  To parse this JSON data, first install
//
//      Boost     http://www.boost.org
//      json.hpp  https://github.com/nlohmann/json
//
//  Then include this file, and then do
//
//     Comment data = nlohmann::json::parse(jsonString);
//     User data = nlohmann::json::parse(jsonString);
//     Color data = nlohmann::json::parse(jsonString);
//     Constraint data = nlohmann::json::parse(jsonString);

#ifndef __QUICKTYPE_COMMENT_USER_COLOR_CONSTRAINT_HPP__
#define __QUICKTYPE_COMMENT_USER_COLOR_CONSTRAINT_HPP__

#include "json.hpp"

namespace quicktype {
    using nlohmann::json;

    /**
     * A description of a user
     *
     * The user who left the comment
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
        /**
         * The file in which the comment lives
         */
        std::string file_key;
        /**
         * If present, the id of the comment to which this is the reply
         */
        std::unique_ptr<std::string> parent_id;
        /**
         * The user who left the comment
         */
        struct CommentUser user;
    };

    /**
     * A description of a user
     */
    struct User {
        std::string handle;
        std::string img_url;
    };

    /**
     * An RGBA color
     */
    struct Color {
        /**
         * Red channel value, between 0 and 1
         */
        double r;
        /**
         * Green channel value, between 0 and 1
         */
        double g;
        /**
         * Blue channel value, between 0 and 1
         */
        double b;
        /**
         * Alpha channel value, between 0 and 1
         */
        double a;
    };

    /**
     * Type of constraint to apply; string enum with potential values below
     *
     * * "SCALE": Scale by value
     * * "WIDTH": Scale proportionally and set width to value
     * * "HEIGHT": Scale proportionally and set height to value
     */
    enum class Type { HEIGHT, SCALE, WIDTH };

    /**
     * Sizing constraint for exports
     */
    struct Constraint {
        /**
         * Type of constraint to apply; string enum with potential values below
         *
         * * "SCALE": Scale by value
         * * "WIDTH": Scale proportionally and set width to value
         * * "HEIGHT": Scale proportionally and set height to value
         */
        Type type;
        /**
         * See type property for effect of this field
         */
        std::unique_ptr<double> value;
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
        _x.file_key = _j.at("file_key").get<std::string>();
        _x.parent_id = quicktype::get_optional<std::string>(_j, "parent_id");
        _x.user = _j.at("user").get<struct quicktype::CommentUser>();
    }

    inline void to_json(json& _j, const struct quicktype::Comment& _x) {
        _j = json::object();
        _j["id"] = _x.id;
        _j["file_key"] = _x.file_key;
        _j["parent_id"] = _x.parent_id;
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

    inline void from_json(const json& _j, struct quicktype::Color& _x) {
        _x.r = _j.at("r").get<double>();
        _x.g = _j.at("g").get<double>();
        _x.b = _j.at("b").get<double>();
        _x.a = _j.at("a").get<double>();
    }

    inline void to_json(json& _j, const struct quicktype::Color& _x) {
        _j = json::object();
        _j["r"] = _x.r;
        _j["g"] = _x.g;
        _j["b"] = _x.b;
        _j["a"] = _x.a;
    }

    inline void from_json(const json& _j, struct quicktype::Constraint& _x) {
        _x.type = _j.at("type").get<quicktype::Type>();
        _x.value = quicktype::get_optional<double>(_j, "value");
    }

    inline void to_json(json& _j, const struct quicktype::Constraint& _x) {
        _j = json::object();
        _j["type"] = _x.type;
        _j["value"] = _x.value;
    }

    inline void from_json(const json& _j, quicktype::Type& _x) {
        if (_j == "HEIGHT") _x = quicktype::Type::HEIGHT;
        else if (_j == "SCALE") _x = quicktype::Type::SCALE;
        else if (_j == "WIDTH") _x = quicktype::Type::WIDTH;
        else throw "Input JSON does not conform to schema";
    }

    inline void to_json(json& _j, const quicktype::Type& _x) {
        switch (_x) {
            case quicktype::Type::HEIGHT: _j = "HEIGHT"; break;
            case quicktype::Type::SCALE: _j = "SCALE"; break;
            case quicktype::Type::WIDTH: _j = "WIDTH"; break;
            default: throw "This should not happen";
        }
    }
}

#endif
