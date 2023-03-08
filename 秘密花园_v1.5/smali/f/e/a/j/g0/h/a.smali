.class public interface abstract Lf/e/a/j/g0/h/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/movieCloud/bean/XXList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/search?page=1"
    .end annotation
.end method

.method public abstract b(ILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "wd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/movieCloud/bean/XXList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/search"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "playindex"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/movieCloud/bean/PlayIndex;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/reqplay/{id}"
    .end annotation
.end method

.method public abstract d(IILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "size"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/movieCloud/bean/AMJList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://mjapp.mjomj.com/index.php/app/ios/vod/index"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lm/e;
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
            "Lcom/comeback/data/ui/movieCloud/bean/XXPlay;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/show/{id}"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/movieCloud/bean/AMJPlay;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://mjapp.mjomj.com/index.php/app/ios/vod/show"
    .end annotation
.end method
