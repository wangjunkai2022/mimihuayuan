.class public Lf/e/a/j/e0/e;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lg/a/x$a;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/mimei/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/e0/e;->a:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/a/x;)V
    .locals 8

    .line 1
    const-class v0, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    .line 2
    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 3
    new-instance v1, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v1}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    .line 4
    const-class v2, Lg/a/e0;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p1, Lg/a/x;->j:Lg/a/k0;

    .line 6
    invoke-virtual {v2, v0}, Lg/a/k0;->d(Ljava/lang/Class;)Lg/a/i0;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lg/a/i0;->c:Lio/realm/internal/Table;

    .line 8
    iget-wide v4, v2, Lio/realm/internal/Table;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->nativeWhere(J)J

    move-result-wide v4

    .line 9
    new-instance v6, Lio/realm/internal/TableQuery;

    iget-object v7, v2, Lio/realm/internal/Table;->b:Lg/a/f1/h;

    invoke-direct {v6, v7, v2, v4, v5}, Lio/realm/internal/TableQuery;-><init>(Lg/a/f1/h;Lio/realm/internal/Table;J)V

    move-object v2, v6

    .line 10
    :goto_0
    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 11
    sget-object v4, Lg/a/f1/w/a;->d:Lg/a/f1/w/a;

    .line 12
    iget-object v5, v4, Lg/a/f1/w/a;->a:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 13
    iget-object v3, p1, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1, v4}, Lg/a/f1/r;->e(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Lg/a/f1/w/a;)Lg/a/f1/r;

    move-result-object v1

    goto :goto_2

    .line 14
    :cond_2
    iget-object v3, p1, Lg/a/a;->d:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, v1}, Lio/realm/internal/OsResults;->b(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object v1

    .line 15
    :goto_2
    new-instance v2, Lg/a/j0;

    invoke-direct {v2, p1, v1, v0}, Lg/a/j0;-><init>(Lg/a/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    .line 16
    iget-object p1, v2, Lg/a/u;->a:Lg/a/a;

    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 17
    iget-object p1, v2, Lg/a/u;->d:Lio/realm/internal/OsResults;

    .line 18
    iget-boolean v0, p1, Lio/realm/internal/OsResults;->e:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    iget-wide v0, p1, Lio/realm/internal/OsResults;->a:J

    invoke-static {v0, v1, v6}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V

    const-wide/16 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    .line 21
    :goto_3
    invoke-virtual {v2}, Lg/a/u;->size()I

    move-result p1

    const/4 v0, -0x1

    if-ge v6, p1, :cond_5

    .line 22
    invoke-virtual {v2, v6}, Lg/a/u;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-virtual {p1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lf/e/a/j/e0/e;->a:Lcom/comeback/data/ui/mimei/ComicReadActivity;

    .line 23
    iget-object v1, v1, Lcom/comeback/data/ui/mimei/ComicReadActivity;->b:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    .line 24
    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_4
    if-eq v6, v0, :cond_6

    .line 25
    invoke-virtual {v2, v6}, Lg/a/u;->b(I)V

    :cond_6
    return-void
.end method
