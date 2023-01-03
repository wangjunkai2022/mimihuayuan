.class public interface abstract Lf/e/a/j/d0/d/b;
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
            "Lcom/comeback/data/ui/md/bean/SearchBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/video/list"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/v;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/md/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
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
            "Lcom/comeback/data/ui/md/bean/ChanelList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/video/channel"
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
            "Lcom/comeback/data/ui/md/bean/MdApiBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/video/listcache"
    .end annotation
.end method
