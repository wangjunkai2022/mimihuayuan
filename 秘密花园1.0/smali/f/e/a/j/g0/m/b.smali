.class public interface abstract Lf/e/a/j/g0/m/b;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/{type}/top"
    .end annotation
.end method

.method public abstract b(Ljava/util/HashMap;)Lm/e;
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
            "Lcom/comeback/data/ui/nana/bean/ActorBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actors"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract d(ILjava/util/HashMap;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "menu"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/menu/{menu}"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/MenuBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/{type}/menus"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "menuid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/{type}/videos/{menuid}"
    .end annotation
.end method

.method public abstract g(ILjava/util/HashMap;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "actorId"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actor/{actorId}}"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)Ll/d;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "x-afdac809-9ad768a3"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ll/d<",
            "Li/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/TagBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/shorts/tags"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/category/{type}"
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/video/info/{id}"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "videoType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "key"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/nana/bean/VideoListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/{videoType}/keyword/{key}"
    .end annotation
.end method
