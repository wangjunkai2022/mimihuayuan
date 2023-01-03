.class public interface abstract Lf/e/a/j/i/j/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
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
            "Lcom/comeback/data/ui/ds/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/api/searchk"
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
            "Lcom/comeback/data/ui/ds/bean/ComicDetailBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/api/chapter_list/tp/{id}-1-1-5000"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "contentType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ll/o0/q;
            value = "pageNo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/ds/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/api/getpage/tp/{contentType}-{type}-{pageNo}"
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
            "Lcom/comeback/data/ui/ds/bean/RecommendBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/home/api/yymhindex.html"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/ds/bean/RankBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/api/rank/type/1"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lm/e;
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
            "Lcom/comeback/data/ui/ds/bean/ComicListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/e;
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/home/api/getjphc.html"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "contentType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "params1"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "params2"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ll/o0/q;
            value = "pageNo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/ds/bean/ScreenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/home/api/cate/tp/{contentType}-{params2}-{params1}-1-{pageNo}"
    .end annotation
.end method
