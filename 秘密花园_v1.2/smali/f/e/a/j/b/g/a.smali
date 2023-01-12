.class public interface abstract Lf/e/a/j/b/g/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/RankHotSearch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v2/api/hot_search"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/MovieList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v2/api/app_resources_recommend/{id}"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;II)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/RankVideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v2/api/rank_boards/{type}"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/MovieDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v1/api/app_resources/{id}"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "lineVersion"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "sharpness"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "line_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v2/api/play/{lineVersion}/{id}/{sharpness}/{line_id}"
    .end annotation
.end method

.method public abstract f(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v1/api/query_groups"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/ChannelId;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v1/api/channel/{id}/view"
    .end annotation
.end method

.method public abstract h(Li/g0;)Lm/e;
    .param p1    # Li/g0;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/g0;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/LoginInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/s2/gw/user-server/web/login"
    .end annotation
.end method

.method public abstract i(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/avbobo/bean/MovieList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/s2/gw/res-bobo/bo/v1/api/app_resources"
    .end annotation
.end method
