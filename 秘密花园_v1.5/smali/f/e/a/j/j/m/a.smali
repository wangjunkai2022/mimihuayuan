.class public interface abstract Lf/e/a/j/j/m/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/fengliu/bean/MMInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/"
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
            "Lcom/comeback/data/ui/fengliu/bean/MMList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/info/list"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;)Lm/e;
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
            "Lcom/comeback/data/ui/fengliu/bean/MMList2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/api/web/info/page.json"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "city"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/fengliu/bean/MMInfo2;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/"
    .end annotation
.end method
