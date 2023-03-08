.class public interface abstract Lf/e/a/j/x/g/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/km/bean/KMVideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/videos/listAll"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/km/bean/KMVideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/videos/listHot"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/km/bean/PicList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "http://119.28.65.192:8090/api/photos/listAll"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/km/bean/KMInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/system/getInfo"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/km/bean/KMVideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/api/users/getUserInfo"
    .end annotation
.end method
