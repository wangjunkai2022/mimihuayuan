.class public Lcom/comeback/data/ui/tv91/bean/TiktopParam;
.super Lf/e/a/f/j;
.source "TiktopParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;
    }
.end annotation


# instance fields
.field public Action:Ljava/lang/String;

.field public Message:Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method

.method public static buildChannelListParams(II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFYA"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageIndex(I)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setID(Ljava/util/List;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setType(I)V

    const/16 p0, 0x1e

    .line 9
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageSize(I)V

    const-string p0, ""

    .line 10
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setData(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 12
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "UwMXBQ=="

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildChannelParams()Lcom/comeback/data/ui/tv91/bean/TiktopParam;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXJwMSV10WCg=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildLogin()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "ew0EDQU="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    const-string v2, "AFVbXFJKCAFAJlMKGQMPRVQNDg=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setAccount(Ljava/lang/String;)V

    const-string v2, "AFVbXFJKCgFC"

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPassword(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UwMXBQ=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lf/i/b/j;

    invoke-direct {v3}, Lf/i/b/j;-><init>()V

    invoke-virtual {v3, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static buildMovieDetail(I)Lcom/comeback/data/ui/tv91/bean/TiktopParam;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFY6CFIIOhMuDloABhY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMovieID(I)V

    .line 5
    sget-object p0, Lf/e/a/k/b;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMemberID(Ljava/lang/String;)V

    .line 6
    sget-object p0, Lf/e/a/k/b;->o:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    return-object v0
.end method

.method public static buildMovieInfo(II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFY6CFIIOhMuDloABhY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMovieID(I)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setSourceId(I)V

    .line 6
    sget-object p0, Lf/e/a/k/b;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMemberID(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lf/e/a/k/b;->o:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 9
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "UwMXBQ=="

    .line 10
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildPlayUrl(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "Zw4CHSYcT1oWVA=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMovieID(I)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setType(I)V

    .line 6
    sget-object p0, Lf/e/a/k/b;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setMemberID(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lf/e/a/k/b;->o:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setToken(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 9
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "UwMXBQ=="

    .line 10
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    invoke-virtual {v2, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildSearchParams(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFYA"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageIndex(I)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setID(Ljava/util/List;)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setType(I)V

    const/16 p0, 0x14

    .line 9
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageSize(I)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setData(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 12
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "UwMXBQ=="

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildStarList(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXJQgHVkFB"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageIndex(I)V

    const/16 p0, 0x5a

    .line 5
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageSize(I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 7
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "UwMXBQ=="

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    invoke-virtual {v2, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildStarListParams(II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFYA"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageIndex(I)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setID(Ljava/util/List;)V

    const/4 p0, 0x5

    .line 8
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setType(I)V

    const/16 p0, 0x1e

    .line 9
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageSize(I)V

    const-string p0, ""

    .line 10
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setData(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 12
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "UwMXBQ=="

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildTagListParams(II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXKQQFUFYA"

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    invoke-direct {v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageIndex(I)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setID(Ljava/util/List;)V

    const/4 p0, 0x2

    .line 8
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setType(I)V

    const/16 p0, 0x1e

    .line 9
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setPageSize(I)V

    const-string p0, ""

    .line 10
    invoke-virtual {v1, p0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->setData(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V

    .line 12
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "UwMXBQ=="

    .line 13
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    invoke-virtual {v1, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static buildTags()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;

    invoke-direct {v0}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;-><init>()V

    const-string v1, "cAcXJwcSSkA="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->setAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UwMXBQ=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lf/i/b/j;

    invoke-direct {v3}, Lf/i/b/j;-><init>()V

    invoke-virtual {v3, v0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->Action:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->Message:Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->Action:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam;->Message:Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    invoke-virtual {v0, p0}, Lf/i/b/j;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YjYlSVM="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UwMXBVY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
