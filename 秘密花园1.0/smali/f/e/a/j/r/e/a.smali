.class public interface abstract Lf/e/a/j/r/e/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/ImageList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/search/private/post/content"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/user/private/igtv/view/list/{id}"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/HotUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/recommend/private/user/v/list"
    .end annotation
.end method

.method public abstract d(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/HotUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/recommend/private/v/list"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/Config;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/general/public/getGeneral"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/ImageList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/recommend/private/post/hot/{id}"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/ImageList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/post/app/user/private/post/view/list/{id}"
    .end annotation
.end method

.method public abstract h(Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/search/private/post/content"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/ins/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/inst/app/recommend/private/post/hot/{id}"
    .end annotation
.end method
