.class public Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;
.super Lcom/comeback/data/ui/km/bean/Video;
.source "com_comeback_data_ui_km_bean_VideoRealmProxy.java"

# interfaces
.implements Lg/a/f1/n;
.implements Lg/a/y0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;
    }
.end annotation


# static fields
.field public static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

.field public proxyState:Lg/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/v<",
            "Lcom/comeback/data/ui/km/bean/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/ui/km/bean/Video;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lg/a/v;->b:Z

    return-void
.end method

.method public static copy(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/km/bean/Video;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/a/f1/n;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/comeback/data/ui/km/bean/Video;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/comeback/data/ui/km/bean/Video;

    .line 4
    iget-object v0, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v0, p3}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 5
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->e:J

    invoke-direct {v0, p3, v1, v2, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 15
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 17
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 18
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {p2}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 19
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->E()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->newProxyInstance(Lg/a/a;Lg/a/f1/p;)Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    move-result-object p0

    .line 21
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/km/bean/Video;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lg/a/f1/n;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lg/a/v;->e:Lg/a/a;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-wide v1, v0, Lg/a/a;->a:J

    iget-wide v3, p0, Lg/a/a;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 6
    iget-object v0, v0, Lg/a/a;->b:Lg/a/b0;

    .line 7
    iget-object v0, v0, Lg/a/b0;->c:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lg/a/a;->b:Lg/a/b0;

    .line 9
    iget-object v1, v1, Lg/a/b0;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 13
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/f1/n;

    if-eqz v1, :cond_2

    .line 14
    check-cast v1, Lcom/comeback/data/ui/km/bean/Video;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    .line 15
    const-class v3, Lcom/comeback/data/ui/km/bean/Video;

    .line 16
    iget-object v4, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v4, v3}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 17
    iget-wide v4, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 18
    invoke-interface {p2}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 19
    invoke-virtual {v3, v4, v5}, Lio/realm/internal/Table;->b(J)J

    move-result-wide v4

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v3, v4, v5, v6}, Lio/realm/internal/Table;->c(JLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    :try_start_0
    invoke-virtual {v3, v4, v5}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/UncheckedRow;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 22
    iput-object p0, v0, Lg/a/a$c;->a:Lg/a/a;

    .line 23
    iput-object v1, v0, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 24
    iput-object p1, v0, Lg/a/a$c;->c:Lg/a/f1/c;

    .line 25
    iput-boolean v2, v0, Lg/a/a$c;->d:Z

    .line 26
    iput-object v3, v0, Lg/a/a$c;->e:Ljava/util/List;

    .line 27
    new-instance v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    invoke-direct {v1}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;-><init>()V

    .line 28
    invoke-interface {p4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lg/a/a$c;->a()V

    .line 30
    throw p0

    :cond_5
    :goto_1
    move v2, p3

    :goto_2
    move-object v3, v1

    if-eqz v2, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 31
    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->update(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;Lcom/comeback/data/ui/km/bean/Video;Ljava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->copy(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    invoke-direct {v0, p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/comeback/data/ui/km/bean/Video;IILjava/util/Map;)Lcom/comeback/data/ui/km/bean/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "II",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n$a<",
            "Lg/a/e0;",
            ">;>;)",
            "Lcom/comeback/data/ui/km/bean/Video;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/a/f1/n$a;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/km/bean/Video;

    invoke-direct {p2}, Lcom/comeback/data/ui/km/bean/Video;-><init>()V

    .line 3
    new-instance v0, Lg/a/f1/n$a;

    invoke-direct {v0, p1, p2}, Lg/a/f1/n$a;-><init>(ILg/a/e0;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget p3, p2, Lg/a/f1/n$a;->a:I

    if-lt p1, p3, :cond_2

    .line 5
    iget-object p0, p2, Lg/a/f1/n$a;->b:Lg/a/e0;

    check-cast p0, Lcom/comeback/data/ui/km/bean/Video;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lg/a/f1/n$a;->b:Lg/a/e0;

    check-cast p3, Lcom/comeback/data/ui/km/bean/Video;

    .line 7
    iput p1, p2, Lg/a/f1/n$a;->a:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mu_avatar(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mu_id(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mu_name(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_comment(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_created(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_id(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_img_url(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_like(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_play_height(I)V

    .line 17
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_play_url(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_play_width(I)V

    .line 19
    invoke-interface {p0}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/y0;->realmSet$mv_title(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$is_cat_ads(I)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v0, "Video"

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$b;-><init>(Ljava/lang/String;II)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mu_avatar"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mu_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mu_name"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_comment"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_created"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_id"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 8
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_img_url"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 9
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_like"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 10
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "mv_play_height"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 11
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_play_url"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 12
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "mv_play_width"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 13
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mv_title"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 14
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "is_cat_ads"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 15
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$b;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lg/a/x;Lorg/json/JSONObject;Z)Lcom/comeback/data/ui/km/bean/Video;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "mv_id"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    const-class p2, Lcom/comeback/data/ui/km/bean/Video;

    .line 3
    iget-object v3, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, p2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 4
    iget-object v3, p0, Lg/a/x;->j:Lg/a/k0;

    .line 5
    const-class v4, Lcom/comeback/data/ui/km/bean/Video;

    .line 6
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 7
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 8
    check-cast v3, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 9
    iget-wide v3, v3, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {p2, v3, v4}, Lio/realm/internal/Table;->b(J)J

    move-result-wide v3

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Lio/realm/internal/Table;->c(JLjava/lang/String;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 13
    sget-object v5, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/a/a$c;

    .line 14
    :try_start_0
    invoke-virtual {p2, v3, v4}, Lio/realm/internal/Table;->l(J)Lio/realm/internal/UncheckedRow;

    move-result-object p2

    .line 15
    iget-object v3, p0, Lg/a/x;->j:Lg/a/k0;

    .line 16
    const-class v4, Lcom/comeback/data/ui/km/bean/Video;

    .line 17
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 18
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    const/4 v4, 0x0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 20
    iput-object p0, v5, Lg/a/a$c;->a:Lg/a/a;

    .line 21
    iput-object p2, v5, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 22
    iput-object v3, v5, Lg/a/a$c;->c:Lg/a/f1/c;

    .line 23
    iput-boolean v4, v5, Lg/a/a$c;->d:Z

    .line 24
    iput-object v6, v5, Lg/a/a$c;->e:Ljava/util/List;

    .line 25
    new-instance p2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v5}, Lg/a/a$c;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Lg/a/a$c;->a()V

    .line 27
    throw p0

    :cond_1
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_4

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 30
    const-class p2, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p0, p2, v2, v3, v0}, Lg/a/x;->M(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lg/a/e0;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    goto :goto_2

    .line 31
    :cond_2
    const-class p2, Lcom/comeback/data/ui/km/bean/Video;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v3, v0}, Lg/a/x;->M(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lg/a/e0;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    goto :goto_2

    .line 32
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'mv_id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    const-string p0, "mu_avatar"

    .line 33
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mu_avatar(Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mu_avatar(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string p0, "mu_id"

    .line 37
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mu_id(Ljava/lang/String;)V

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mu_id(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string p0, "mu_name"

    .line 41
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mu_name(Ljava/lang/String;)V

    goto :goto_5

    .line 44
    :cond_9
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mu_name(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string p0, "mv_comment"

    .line 45
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_comment(Ljava/lang/String;)V

    goto :goto_6

    .line 48
    :cond_b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_comment(Ljava/lang/String;)V

    :cond_c
    :goto_6
    const-string p0, "mv_created"

    .line 49
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_created(Ljava/lang/String;)V

    goto :goto_7

    .line 52
    :cond_d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_created(Ljava/lang/String;)V

    :cond_e
    :goto_7
    const-string p0, "mv_img_url"

    .line 53
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_img_url(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :cond_f
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_img_url(Ljava/lang/String;)V

    :cond_10
    :goto_8
    const-string p0, "mv_like"

    .line 57
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_like(Ljava/lang/String;)V

    goto :goto_9

    .line 60
    :cond_11
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_like(Ljava/lang/String;)V

    :cond_12
    :goto_9
    const-string p0, "mv_play_height"

    .line 61
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 63
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_play_height(I)V

    goto :goto_a

    .line 64
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mv_play_height\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_a
    const-string p0, "mv_play_url"

    .line 65
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_play_url(Ljava/lang/String;)V

    goto :goto_b

    .line 68
    :cond_15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_play_url(Ljava/lang/String;)V

    :cond_16
    :goto_b
    const-string p0, "mv_play_width"

    .line 69
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 70
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 71
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_play_width(I)V

    goto :goto_c

    .line 72
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'mv_play_width\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_c
    const-string p0, "mv_title"

    .line 73
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 74
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 75
    invoke-interface {p2, v2}, Lg/a/y0;->realmSet$mv_title(Ljava/lang/String;)V

    goto :goto_d

    .line 76
    :cond_19
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$mv_title(Ljava/lang/String;)V

    :cond_1a
    :goto_d
    const-string p0, "is_cat_ads"

    .line 77
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 78
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 79
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p2, p0}, Lg/a/y0;->realmSet$is_cat_ads(I)V

    goto :goto_e

    .line 80
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to set non-nullable field \'is_cat_ads\' to null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_e
    return-object p2
.end method

.method public static createUsingJsonStream(Lg/a/x;Landroid/util/JsonReader;)Lcom/comeback/data/ui/km/bean/Video;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/km/bean/Video;

    invoke-direct {v0}, Lcom/comeback/data/ui/km/bean/Video;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mu_avatar"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mu_avatar(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mu_avatar(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "mu_id"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mu_id(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mu_id(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "mu_name"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_4

    .line 17
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mu_name(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mu_name(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "mv_comment"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_6

    .line 22
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_comment(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_comment(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "mv_created"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_created(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_created(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "mv_id"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/a/y0;->realmSet$mv_id(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_id(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const-string v4, "mv_img_url"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_c

    .line 37
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_img_url(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_img_url(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "mv_like"

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 41
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_e

    .line 42
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_like(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_like(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "mv_play_height"

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 46
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_10

    .line 47
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_play_height(I)V

    goto/16 :goto_0

    :cond_10
    const-string p0, "Trying to set non-nullable field \'mv_play_height\' to null."

    .line 48
    invoke-static {p1, p0}, Lf/b/a/a/a;->x(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 49
    throw p0

    :cond_11
    const-string v4, "mv_play_url"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 51
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_12

    .line 52
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_play_url(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_play_url(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "mv_play_width"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 56
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_14

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_play_width(I)V

    goto/16 :goto_0

    :cond_14
    const-string p0, "Trying to set non-nullable field \'mv_play_width\' to null."

    .line 58
    invoke-static {p1, p0}, Lf/b/a/a/a;->x(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 59
    throw p0

    :cond_15
    const-string v4, "mv_title"

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_16

    .line 62
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$mv_title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v5}, Lg/a/y0;->realmSet$mv_title(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v4, "is_cat_ads"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_18

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    invoke-interface {v0, v3}, Lg/a/y0;->realmSet$is_cat_ads(I)V

    goto/16 :goto_0

    :cond_18
    const-string p0, "Trying to set non-nullable field \'is_cat_ads\' to null."

    .line 68
    invoke-static {p1, p0}, Lf/b/a/a/a;->x(Landroid/util/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    .line 69
    throw p0

    .line 70
    :cond_19
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 71
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v2, :cond_1b

    new-array p1, v1, [Lg/a/m;

    .line 72
    invoke-virtual {p0, v0, p1}, Lg/a/x;->L(Lg/a/e0;[Lg/a/m;)Lg/a/e0;

    move-result-object p0

    check-cast p0, Lcom/comeback/data/ui/km/bean/Video;

    return-object p0

    .line 73
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'mv_id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Video"

    return-object v0
.end method

.method public static insert(Lg/a/x;Lcom/comeback/data/ui/km/bean/Video;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lg/a/f1/n;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lg/a/f1/n;

    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 2
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 4
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v3, v3, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v3, v3, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v4, v0, Lg/a/a;->b:Lg/a/b0;

    .line 8
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 12
    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_0
    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    .line 14
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 15
    iget-wide v12, v2, Lio/realm/internal/Table;->a:J

    .line 16
    iget-object v0, v0, Lg/a/x;->j:Lg/a/k0;

    .line 17
    const-class v3, Lcom/comeback/data/ui/km/bean/Video;

    .line 18
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 19
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v3}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 20
    check-cast v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 21
    iget-wide v3, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 22
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 23
    invoke-static {v12, v13, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v12, v13, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_b

    .line 25
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v14

    .line 26
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 28
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_2
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 30
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_3
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 32
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 33
    :cond_4
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 34
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 35
    :cond_5
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 36
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 37
    :cond_6
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 38
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 39
    :cond_7
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 40
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 41
    :cond_8
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result v2

    int-to-long v9, v2

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 42
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 43
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 44
    :cond_9
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result v2

    int-to-long v9, v2

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 45
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 46
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 47
    :cond_a
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result v0

    int-to-long v9, v0

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-wide v14

    .line 48
    :cond_b
    invoke-static {v5}, Lio/realm/internal/Table;->s(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static insert(Lg/a/x;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Ljava/util/Iterator<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 49
    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    .line 50
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 51
    iget-wide v12, v2, Lio/realm/internal/Table;->a:J

    .line 52
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    .line 53
    const-class v4, Lcom/comeback/data/ui/km/bean/Video;

    .line 54
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 55
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 56
    move-object v14, v3

    check-cast v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 57
    iget-wide v10, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 58
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 59
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/comeback/data/ui/km/bean/Video;

    .line 60
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    instance-of v3, v15, Lg/a/f1/n;

    if-eqz v3, :cond_1

    move-object v3, v15

    check-cast v3, Lg/a/f1/n;

    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 62
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    if-eqz v4, :cond_1

    .line 63
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 64
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    .line 65
    iget-object v4, v4, Lg/a/a;->b:Lg/a/b0;

    .line 66
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 67
    iget-object v5, v0, Lg/a/a;->b:Lg/a/b0;

    .line 68
    iget-object v5, v5, Lg/a/b0;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 71
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    .line 72
    invoke-interface {v3}, Lg/a/f1/p;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 74
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v12, v13, v10, v11, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_c

    .line 76
    invoke-static {v2, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v16

    .line 77
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 79
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v10

    .line 80
    :goto_2
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 81
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 82
    :cond_4
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 83
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 84
    :cond_5
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 85
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 86
    :cond_6
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 87
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 88
    :cond_7
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 89
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 90
    :cond_8
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 91
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 92
    :cond_9
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 93
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 94
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 95
    :cond_a
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 96
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 97
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 98
    :cond_b
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    .line 99
    :cond_c
    invoke-static {v3}, Lio/realm/internal/Table;->s(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    return-void
.end method

.method public static insertOrUpdate(Lg/a/x;Lcom/comeback/data/ui/km/bean/Video;Ljava/util/Map;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    instance-of v2, v1, Lg/a/f1/n;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lg/a/f1/n;

    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 2
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 4
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v3, v3, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v3, v3, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v4, v0, Lg/a/a;->b:Lg/a/b0;

    .line 8
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v2}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 12
    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v0

    return-wide v0

    .line 13
    :cond_0
    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    .line 14
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 15
    iget-wide v12, v2, Lio/realm/internal/Table;->a:J

    .line 16
    iget-object v0, v0, Lg/a/x;->j:Lg/a/k0;

    .line 17
    const-class v3, Lcom/comeback/data/ui/km/bean/Video;

    .line 18
    invoke-virtual {v0}, Lg/a/k0;->a()V

    .line 19
    iget-object v0, v0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v0, v3}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v0

    .line 20
    check-cast v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 21
    iget-wide v3, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 22
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 23
    invoke-static {v12, v13, v3, v4}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v12, v13, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 25
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v6

    :cond_2
    move-wide v14, v6

    .line 26
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 28
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 29
    :cond_3
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_1
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 31
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 32
    :cond_4
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_2
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 34
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 35
    :cond_5
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_3
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 37
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 38
    :cond_6
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_4
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 40
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 41
    :cond_7
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_5
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 43
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 44
    :cond_8
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 45
    :goto_6
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 46
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 47
    :cond_9
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 48
    :goto_7
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result v2

    int-to-long v9, v2

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 49
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 50
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 51
    :cond_a
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 52
    :goto_8
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result v2

    int-to-long v9, v2

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 53
    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 54
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 55
    :cond_b
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 56
    :goto_9
    iget-wide v5, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface/range {p1 .. p1}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result v0

    int-to-long v9, v0

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide v7, v14

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-wide v14
.end method

.method public static insertOrUpdate(Lg/a/x;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Ljava/util/Iterator<",
            "+",
            "Lg/a/e0;",
            ">;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 57
    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    .line 58
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 59
    iget-wide v12, v2, Lio/realm/internal/Table;->a:J

    .line 60
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    .line 61
    const-class v4, Lcom/comeback/data/ui/km/bean/Video;

    .line 62
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 63
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 64
    move-object v14, v3

    check-cast v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 65
    iget-wide v10, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    .line 66
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/comeback/data/ui/km/bean/Video;

    .line 68
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    instance-of v3, v15, Lg/a/f1/n;

    if-eqz v3, :cond_1

    move-object v3, v15

    check-cast v3, Lg/a/f1/n;

    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 70
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    if-eqz v4, :cond_1

    .line 71
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 72
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    .line 73
    iget-object v4, v4, Lg/a/a;->b:Lg/a/b0;

    .line 74
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 75
    iget-object v5, v0, Lg/a/a;->b:Lg/a/b0;

    .line 76
    iget-object v5, v5, Lg/a/b0;->c:Ljava/lang/String;

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 79
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    .line 80
    invoke-interface {v3}, Lg/a/f1/p;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 82
    invoke-static {v12, v13, v10, v11}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 83
    :cond_2
    invoke-static {v12, v13, v10, v11, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 84
    invoke-static {v2, v10, v11, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    .line 85
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 87
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/16 v18, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    move-wide/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v10

    .line 88
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 89
    :goto_3
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 90
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 91
    :cond_5
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 92
    :goto_4
    invoke-interface {v15}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 93
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 94
    :cond_6
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 95
    :goto_5
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 96
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 97
    :cond_7
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 98
    :goto_6
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 99
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 100
    :cond_8
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 101
    :goto_7
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 102
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 103
    :cond_9
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 104
    :goto_8
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 105
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 106
    :cond_a
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 107
    :goto_9
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 108
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 109
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 110
    :cond_b
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 111
    :goto_a
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 112
    invoke-interface {v15}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 113
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 114
    :cond_c
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    const/4 v9, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 115
    :goto_b
    iget-wide v5, v14, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {v15}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result v3

    int-to-long v9, v3

    const/4 v11, 0x0

    move-wide v3, v12

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v11}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    move-wide/from16 v10, v19

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static newProxyInstance(Lg/a/a;Lg/a/f1/p;)Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;
    .locals 4

    .line 1
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 2
    invoke-virtual {p0}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v1

    const-class v2, Lcom/comeback/data/ui/km/bean/Video;

    .line 3
    invoke-virtual {v1}, Lg/a/k0;->a()V

    .line 4
    iget-object v1, v1, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v1, v2}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 6
    iput-object p0, v0, Lg/a/a$c;->a:Lg/a/a;

    .line 7
    iput-object p1, v0, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 8
    iput-object v1, v0, Lg/a/a$c;->c:Lg/a/f1/c;

    .line 9
    iput-boolean v2, v0, Lg/a/a$c;->d:Z

    .line 10
    iput-object v3, v0, Lg/a/a$c;->e:Ljava/util/List;

    .line 11
    new-instance p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    invoke-direct {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;-><init>()V

    .line 12
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p0
.end method

.method public static update(Lg/a/x;Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;Lcom/comeback/data/ui/km/bean/Video;Lcom/comeback/data/ui/km/bean/Video;Ljava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/km/bean/Video;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Lcom/comeback/data/ui/km/bean/Video;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/km/bean/Video;"
        }
    .end annotation

    .line 1
    const-class p4, Lcom/comeback/data/ui/km/bean/Video;

    .line 2
    iget-object p0, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {p0, p4}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 3
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->e:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mu_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mu_name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_created()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_like()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_play_height()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 13
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 14
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_play_width()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 15
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$mv_title()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 16
    iget-wide p0, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {p3}, Lg/a/y0;->realmGet$is_cat_ads()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/Integer;)V

    .line 17
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->F()V

    return-object p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 4
    iget-object v2, v2, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v2, v2, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v2, v2, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v3, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 8
    iget-object v3, v3, Lg/a/v;->e:Lg/a/a;

    .line 9
    iget-object v3, v3, Lg/a/a;->b:Lg/a/b0;

    .line 10
    iget-object v3, v3, Lg/a/b0;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 12
    :cond_3
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v2, v2, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    invoke-interface {v2}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 16
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    .line 17
    invoke-interface {v3}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :goto_1
    return v1

    .line 19
    :cond_5
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 20
    iget-object v2, v2, Lg/a/v;->c:Lg/a/f1/p;

    .line 21
    invoke-interface {v2}, Lg/a/f1/p;->l()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 22
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 23
    invoke-interface {p1}, Lg/a/f1/p;->l()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v1, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    iget-object v1, v1, Lg/a/a;->b:Lg/a/b0;

    .line 4
    iget-object v1, v1, Lg/a/b0;->c:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 8
    iget-object v2, v2, Lg/a/v;->c:Lg/a/f1/p;

    .line 9
    invoke-interface {v2}, Lg/a/f1/p;->l()J

    move-result-wide v2

    const/16 v4, 0x20f

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x1f

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    :cond_1
    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v4, v1

    return v4
.end method

.method public realm$injectObjectContext()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 3
    iget-object v1, v0, Lg/a/a$c;->c:Lg/a/f1/c;

    .line 4
    check-cast v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iput-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    .line 5
    new-instance v1, Lg/a/v;

    invoke-direct {v1, p0}, Lg/a/v;-><init>(Lg/a/e0;)V

    iput-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 6
    iget-object v2, v0, Lg/a/a$c;->a:Lg/a/a;

    .line 7
    iput-object v2, v1, Lg/a/v;->e:Lg/a/a;

    .line 8
    iget-object v2, v0, Lg/a/a$c;->b:Lg/a/f1/p;

    .line 9
    iput-object v2, v1, Lg/a/v;->c:Lg/a/f1/p;

    .line 10
    iget-boolean v0, v0, Lg/a/a$c;->d:Z

    .line 11
    iput-boolean v0, v1, Lg/a/v;->f:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public realmGet$is_cat_ads()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->p(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mu_avatar()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mu_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mu_name()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_comment()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_created()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->k:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_img_url()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_like()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_play_height()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->p(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mv_play_url()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mv_play_width()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->p(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public realmGet$mv_title()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$proxyState()Lg/a/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/v<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    return-object v0
.end method

.method public realmSet$is_cat_ads(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, v2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->p(JJJZ)V

    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 7
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 8
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 9
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 10
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->r:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lg/a/f1/p;->u(JJ)V

    return-void
.end method

.method public realmSet$mu_avatar(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->f:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mu_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->g:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mu_name(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->h:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_comment(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->i:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_created(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->j:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_id(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v0, p1, Lg/a/v;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lg/a/v;->e:Lg/a/a;

    .line 4
    invoke-virtual {p1}, Lg/a/a;->f()V

    .line 5
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'mv_id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$mv_img_url(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->l:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_like(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->m:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_play_height(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, v2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->p(JJJZ)V

    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 7
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 8
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 9
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 10
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->n:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lg/a/f1/p;->u(JJ)V

    return-void
.end method

.method public realmSet$mv_play_url(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->o:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mv_play_width(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, v2, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    int-to-long v6, p1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->p(JJJZ)V

    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 7
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 8
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 9
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 10
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->p:J

    int-to-long v3, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lg/a/f1/p;->u(JJ)V

    return-void
.end method

.method public realmSet$mv_title(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-boolean v1, v0, Lg/a/v;->b:Z

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, v0, Lg/a/v;->f:Z

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->r(JJLjava/lang/String;Z)V

    return-void

    .line 7
    :cond_2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 8
    invoke-virtual {v0}, Lg/a/a;->f()V

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy$a;->q:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lg/a/g0;->isValid(Lg/a/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    :cond_0
    const-string v0, "Video = proxy["

    const-string v1, "{mu_avatar:"

    .line 2
    invoke-static {v0, v1}, Lf/b/a/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_avatar()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "}"

    const-string v4, ","

    const-string v5, "{mu_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v5, "{mu_name:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mu_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v5, "{mv_comment:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_comment()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v5, "{mv_created:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_created()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    const-string v5, "{mv_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string v5, "{mv_img_url:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_img_url()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    const-string v5, "{mv_like:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_like()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    const-string v5, "{mv_play_height:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_play_height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mv_play_url:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_play_url()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    const-string v5, "{mv_play_width:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_play_width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mv_title:"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$mv_title()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v1, "{is_cat_ads:"

    invoke-static {v0, v2, v3, v4, v1}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_km_bean_VideoRealmProxy;->realmGet$is_cat_ads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
