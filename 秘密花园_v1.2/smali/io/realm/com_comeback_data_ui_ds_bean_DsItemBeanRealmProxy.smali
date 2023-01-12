.class public Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;
.super Lcom/comeback/data/ui/ds/bean/DsItemBean;
.source "com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.java"

# interfaces
.implements Lg/a/f1/n;
.implements Lg/a/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;
    }
.end annotation


# static fields
.field public static final expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field public columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

.field public proxyState:Lg/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/v<",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->createExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lg/a/v;->b:Z

    return-void
.end method

.method public static copy(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/a/f1/n;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 4
    iget-object v0, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v0, p3}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 5
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->e:J

    invoke-direct {v0, p3, v1, v2, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 6
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 18
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 19
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 20
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 21
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 22
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 23
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 24
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 25
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 26
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 27
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 28
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 29
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 30
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 31
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 32
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 33
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 34
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 35
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 36
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 37
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 38
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 39
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 40
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 41
    iget-wide v1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {p2}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->E()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->newProxyInstance(Lg/a/a;Lg/a/f1/p;)Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    move-result-object p0

    .line 44
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static copyOrUpdate(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Z",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;"
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
    check-cast v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    .line 15
    const-class v3, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 16
    iget-object v4, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v4, v3}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 17
    iget-wide v4, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 18
    invoke-interface {p2}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

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
    new-instance v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    invoke-direct {v1}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;-><init>()V

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
    invoke-static/range {v1 .. v6}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->update(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;Lcom/comeback/data/ui/ds/bean/DsItemBean;Ljava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->copy(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;ZLjava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static createColumnInfo(Lio/realm/internal/OsSchemaInfo;)Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    invoke-direct {v0, p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static createDetachedCopy(Lcom/comeback/data/ui/ds/bean/DsItemBean;IILjava/util/Map;)Lcom/comeback/data/ui/ds/bean/DsItemBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "II",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n$a<",
            "Lg/a/e0;",
            ">;>;)",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;"
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
    new-instance p2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-direct {p2}, Lcom/comeback/data/ui/ds/bean/DsItemBean;-><init>()V

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

    check-cast p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lg/a/f1/n$a;->b:Lg/a/e0;

    check-cast p3, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 7
    iput p1, p2, Lg/a/f1/n$a;->a:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$id(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$title(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$lanmu_id(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$create_time(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$update_time(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$sort(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$status(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$view(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$image(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$type(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$auther(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$desc(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$mark(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$ticai_id(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$duzhequn_id(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$diyu_id(Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$mhstatus(Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$tjswitch(Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$isfree(Ljava/lang/String;)V

    .line 27
    invoke-interface {p0}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$cjid(Ljava/lang/String;)V

    .line 28
    invoke-interface {p0}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$cjstatus(Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$cjname(Ljava/lang/String;)V

    .line 30
    invoke-interface {p0}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$keyword(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$last_chapter_title(Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$searchnums(Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$last_chapter(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$isjingpin(Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$xianmian(Ljava/lang/String;)V

    .line 36
    invoke-interface {p0}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$cover(Ljava/lang/String;)V

    .line 37
    invoke-interface {p0}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$ishot(Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$issole(Ljava/lang/String;)V

    .line 39
    invoke-interface {p0}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$isnew(Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$h(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$vipcanread(Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/r0;->realmSet$pingfen(Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$contentType(Ljava/lang/String;)V

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

    const-string v0, "DsItemBean"

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lio/realm/internal/OsObjectSchemaInfo$b;-><init>(Ljava/lang/String;II)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "id"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "title"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 4
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "lanmu_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 5
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "create_time"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 6
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "update_time"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 7
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "sort"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 8
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "status"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 9
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "view"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 10
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "image"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 11
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "type"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 12
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "auther"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 13
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "desc"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 14
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mark"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 15
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "ticai_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 16
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "duzhequn_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 17
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "diyu_id"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 18
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "mhstatus"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 19
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "tjswitch"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 20
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "isfree"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 21
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "cjid"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 22
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "cjstatus"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 23
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "cjname"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 24
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "keyword"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 25
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "last_chapter_title"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 26
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "searchnums"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 27
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "last_chapter"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 28
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "isjingpin"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 29
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "xianmian"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 30
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "cover"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 31
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "ishot"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 32
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "issole"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 33
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "isnew"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 34
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "h"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 35
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "vipcanread"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 36
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "pingfen"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 37
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "contentType"

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 38
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$b;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createOrUpdateUsingJsonObject(Lg/a/x;Lorg/json/JSONObject;Z)Lcom/comeback/data/ui/ds/bean/DsItemBean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 2
    const-class p2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 3
    iget-object v3, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, p2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    .line 4
    iget-object v3, p0, Lg/a/x;->j:Lg/a/k0;

    .line 5
    const-class v4, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 6
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 7
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 8
    check-cast v3, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 9
    iget-wide v3, v3, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

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
    const-class v4, Lcom/comeback/data/ui/ds/bean/DsItemBean;

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
    new-instance p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    invoke-direct {p2}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;-><init>()V
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

    if-eqz p2, :cond_2

    .line 30
    const-class p2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v2, v1, v0}, Lg/a/x;->M(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lg/a/e0;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    goto :goto_2

    .line 31
    :cond_2
    const-class p2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v1, v3, v0}, Lg/a/x;->M(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/List;)Lg/a/e0;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    goto :goto_2

    .line 32
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    const-string p0, "title"

    .line 33
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$title(Ljava/lang/String;)V

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$title(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const-string p0, "lanmu_id"

    .line 37
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$lanmu_id(Ljava/lang/String;)V

    goto :goto_4

    .line 40
    :cond_7
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$lanmu_id(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string p0, "create_time"

    .line 41
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$create_time(Ljava/lang/String;)V

    goto :goto_5

    .line 44
    :cond_9
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$create_time(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string p0, "update_time"

    .line 45
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 46
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 47
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$update_time(Ljava/lang/String;)V

    goto :goto_6

    .line 48
    :cond_b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$update_time(Ljava/lang/String;)V

    :cond_c
    :goto_6
    const-string p0, "sort"

    .line 49
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 51
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$sort(Ljava/lang/String;)V

    goto :goto_7

    .line 52
    :cond_d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$sort(Ljava/lang/String;)V

    :cond_e
    :goto_7
    const-string p0, "status"

    .line 53
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$status(Ljava/lang/String;)V

    goto :goto_8

    .line 56
    :cond_f
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$status(Ljava/lang/String;)V

    :cond_10
    :goto_8
    const-string p0, "view"

    .line 57
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$view(Ljava/lang/String;)V

    goto :goto_9

    .line 60
    :cond_11
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$view(Ljava/lang/String;)V

    :cond_12
    :goto_9
    const-string p0, "image"

    .line 61
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 63
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$image(Ljava/lang/String;)V

    goto :goto_a

    .line 64
    :cond_13
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$image(Ljava/lang/String;)V

    :cond_14
    :goto_a
    const-string p0, "type"

    .line 65
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$type(Ljava/lang/String;)V

    goto :goto_b

    .line 68
    :cond_15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$type(Ljava/lang/String;)V

    :cond_16
    :goto_b
    const-string p0, "auther"

    .line 69
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 70
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 71
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$auther(Ljava/lang/String;)V

    goto :goto_c

    .line 72
    :cond_17
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$auther(Ljava/lang/String;)V

    :cond_18
    :goto_c
    const-string p0, "desc"

    .line 73
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 74
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 75
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$desc(Ljava/lang/String;)V

    goto :goto_d

    .line 76
    :cond_19
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$desc(Ljava/lang/String;)V

    :cond_1a
    :goto_d
    const-string p0, "mark"

    .line 77
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 78
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 79
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$mark(Ljava/lang/String;)V

    goto :goto_e

    .line 80
    :cond_1b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$mark(Ljava/lang/String;)V

    :cond_1c
    :goto_e
    const-string p0, "ticai_id"

    .line 81
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 82
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 83
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$ticai_id(Ljava/lang/String;)V

    goto :goto_f

    .line 84
    :cond_1d
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$ticai_id(Ljava/lang/String;)V

    :cond_1e
    :goto_f
    const-string p0, "duzhequn_id"

    .line 85
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 86
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 87
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$duzhequn_id(Ljava/lang/String;)V

    goto :goto_10

    .line 88
    :cond_1f
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$duzhequn_id(Ljava/lang/String;)V

    :cond_20
    :goto_10
    const-string p0, "diyu_id"

    .line 89
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 90
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 91
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$diyu_id(Ljava/lang/String;)V

    goto :goto_11

    .line 92
    :cond_21
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$diyu_id(Ljava/lang/String;)V

    :cond_22
    :goto_11
    const-string p0, "mhstatus"

    .line 93
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 94
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 95
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$mhstatus(Ljava/lang/String;)V

    goto :goto_12

    .line 96
    :cond_23
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$mhstatus(Ljava/lang/String;)V

    :cond_24
    :goto_12
    const-string p0, "tjswitch"

    .line 97
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 98
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 99
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$tjswitch(Ljava/lang/String;)V

    goto :goto_13

    .line 100
    :cond_25
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$tjswitch(Ljava/lang/String;)V

    :cond_26
    :goto_13
    const-string p0, "isfree"

    .line 101
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 102
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 103
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$isfree(Ljava/lang/String;)V

    goto :goto_14

    .line 104
    :cond_27
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$isfree(Ljava/lang/String;)V

    :cond_28
    :goto_14
    const-string p0, "cjid"

    .line 105
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 106
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 107
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$cjid(Ljava/lang/String;)V

    goto :goto_15

    .line 108
    :cond_29
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$cjid(Ljava/lang/String;)V

    :cond_2a
    :goto_15
    const-string p0, "cjstatus"

    .line 109
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 110
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 111
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$cjstatus(Ljava/lang/String;)V

    goto :goto_16

    .line 112
    :cond_2b
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$cjstatus(Ljava/lang/String;)V

    :cond_2c
    :goto_16
    const-string p0, "cjname"

    .line 113
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "cjname"

    .line 114
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 115
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$cjname(Ljava/lang/String;)V

    goto :goto_17

    :cond_2d
    const-string p0, "cjname"

    .line 116
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$cjname(Ljava/lang/String;)V

    :cond_2e
    :goto_17
    const-string p0, "keyword"

    .line 117
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "keyword"

    .line 118
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 119
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$keyword(Ljava/lang/String;)V

    goto :goto_18

    :cond_2f
    const-string p0, "keyword"

    .line 120
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$keyword(Ljava/lang/String;)V

    :cond_30
    :goto_18
    const-string p0, "last_chapter_title"

    .line 121
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "last_chapter_title"

    .line 122
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 123
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$last_chapter_title(Ljava/lang/String;)V

    goto :goto_19

    :cond_31
    const-string p0, "last_chapter_title"

    .line 124
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$last_chapter_title(Ljava/lang/String;)V

    :cond_32
    :goto_19
    const-string p0, "searchnums"

    .line 125
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "searchnums"

    .line 126
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 127
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$searchnums(Ljava/lang/String;)V

    goto :goto_1a

    :cond_33
    const-string p0, "searchnums"

    .line 128
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$searchnums(Ljava/lang/String;)V

    :cond_34
    :goto_1a
    const-string p0, "last_chapter"

    .line 129
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "last_chapter"

    .line 130
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 131
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$last_chapter(Ljava/lang/String;)V

    goto :goto_1b

    :cond_35
    const-string p0, "last_chapter"

    .line 132
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$last_chapter(Ljava/lang/String;)V

    :cond_36
    :goto_1b
    const-string p0, "isjingpin"

    .line 133
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    const-string p0, "isjingpin"

    .line 134
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 135
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$isjingpin(Ljava/lang/String;)V

    goto :goto_1c

    :cond_37
    const-string p0, "isjingpin"

    .line 136
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$isjingpin(Ljava/lang/String;)V

    :cond_38
    :goto_1c
    const-string p0, "xianmian"

    .line 137
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "xianmian"

    .line 138
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 139
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$xianmian(Ljava/lang/String;)V

    goto :goto_1d

    :cond_39
    const-string p0, "xianmian"

    .line 140
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$xianmian(Ljava/lang/String;)V

    :cond_3a
    :goto_1d
    const-string p0, "cover"

    .line 141
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "cover"

    .line 142
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 143
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$cover(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3b
    const-string p0, "cover"

    .line 144
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$cover(Ljava/lang/String;)V

    :cond_3c
    :goto_1e
    const-string p0, "ishot"

    .line 145
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const-string p0, "ishot"

    .line 146
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 147
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$ishot(Ljava/lang/String;)V

    goto :goto_1f

    :cond_3d
    const-string p0, "ishot"

    .line 148
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$ishot(Ljava/lang/String;)V

    :cond_3e
    :goto_1f
    const-string p0, "issole"

    .line 149
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    const-string p0, "issole"

    .line 150
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 151
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$issole(Ljava/lang/String;)V

    goto :goto_20

    :cond_3f
    const-string p0, "issole"

    .line 152
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$issole(Ljava/lang/String;)V

    :cond_40
    :goto_20
    const-string p0, "isnew"

    .line 153
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "isnew"

    .line 154
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 155
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$isnew(Ljava/lang/String;)V

    goto :goto_21

    :cond_41
    const-string p0, "isnew"

    .line 156
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$isnew(Ljava/lang/String;)V

    :cond_42
    :goto_21
    const-string p0, "h"

    .line 157
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "h"

    .line 158
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 159
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$h(Ljava/lang/String;)V

    goto :goto_22

    :cond_43
    const-string p0, "h"

    .line 160
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$h(Ljava/lang/String;)V

    :cond_44
    :goto_22
    const-string p0, "vipcanread"

    .line 161
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_46

    const-string p0, "vipcanread"

    .line 162
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 163
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$vipcanread(Ljava/lang/String;)V

    goto :goto_23

    :cond_45
    const-string p0, "vipcanread"

    .line 164
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$vipcanread(Ljava/lang/String;)V

    :cond_46
    :goto_23
    const-string p0, "pingfen"

    .line 165
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_48

    const-string p0, "pingfen"

    .line 166
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 167
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$pingfen(Ljava/lang/String;)V

    goto :goto_24

    :cond_47
    const-string p0, "pingfen"

    .line 168
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$pingfen(Ljava/lang/String;)V

    :cond_48
    :goto_24
    const-string p0, "contentType"

    .line 169
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string p0, "contentType"

    .line 170
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 171
    invoke-interface {p2, v2}, Lg/a/r0;->realmSet$contentType(Ljava/lang/String;)V

    goto :goto_25

    :cond_49
    const-string p0, "contentType"

    .line 172
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lg/a/r0;->realmSet$contentType(Ljava/lang/String;)V

    :cond_4a
    :goto_25
    return-object p2
.end method

.method public static createUsingJsonStream(Lg/a/x;Landroid/util/JsonReader;)Lcom/comeback/data/ui/ds/bean/DsItemBean;
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
    new-instance v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-direct {v0}, Lcom/comeback/data/ui/ds/bean/DsItemBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/a/r0;->realmSet$id(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 9
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$id(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "title"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 14
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$title(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "lanmu_id"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$lanmu_id(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 19
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$lanmu_id(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v4, "create_time"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$create_time(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 24
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$create_time(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "update_time"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$update_time(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 29
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$update_time(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "sort"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_a

    .line 32
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$sort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 34
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$sort(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "status"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$status(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 39
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$status(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "view"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$view(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 44
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$view(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "image"

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
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$image(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 49
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$image(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v4, "type"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$type(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 54
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$type(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "auther"

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
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$auther(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 59
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$auther(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v4, "desc"

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

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$desc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_16
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 64
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$desc(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const-string v4, "mark"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_18

    .line 67
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$mark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 69
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$mark(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v4, "ticai_id"

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 71
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1a

    .line 72
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$ticai_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 74
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$ticai_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v4, "duzhequn_id"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1c

    .line 77
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$duzhequn_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_1c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 79
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$duzhequn_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const-string v4, "diyu_id"

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 81
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_1e

    .line 82
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$diyu_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 84
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$diyu_id(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "mhstatus"

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 86
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_20

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$mhstatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 89
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$mhstatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const-string v4, "tjswitch"

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 91
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_22

    .line 92
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$tjswitch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_22
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 94
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$tjswitch(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    const-string v4, "isfree"

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_24

    .line 97
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$isfree(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_24
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 99
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$isfree(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_25
    const-string v4, "cjid"

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 101
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_26

    .line 102
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$cjid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_26
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 104
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$cjid(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v4, "cjstatus"

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 106
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_28

    .line 107
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$cjstatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_28
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 109
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$cjstatus(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    const-string v4, "cjname"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 111
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2a

    .line 112
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$cjname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_2a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 114
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$cjname(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2b
    const-string v4, "keyword"

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 116
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2c

    .line 117
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$keyword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_2c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 119
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$keyword(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    const-string v4, "last_chapter_title"

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 121
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_2e

    .line 122
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$last_chapter_title(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_2e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 124
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$last_chapter_title(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v4, "searchnums"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 126
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_30

    .line 127
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$searchnums(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_30
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 129
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$searchnums(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    const-string v4, "last_chapter"

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 131
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_32

    .line 132
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$last_chapter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_32
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 134
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$last_chapter(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    const-string v4, "isjingpin"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 136
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_34

    .line 137
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$isjingpin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_34
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 139
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$isjingpin(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const-string v4, "xianmian"

    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 141
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_36

    .line 142
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$xianmian(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_36
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 144
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$xianmian(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const-string v4, "cover"

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 146
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_38

    .line 147
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$cover(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_38
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 149
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$cover(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_39
    const-string v4, "ishot"

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 151
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3a

    .line 152
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$ishot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_3a
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 154
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$ishot(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3b
    const-string v4, "issole"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 156
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3c

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$issole(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_3c
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 159
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$issole(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3d
    const-string v4, "isnew"

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 161
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3e

    .line 162
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$isnew(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_3e
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 164
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$isnew(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3f
    const-string v4, "h"

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 166
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_40

    .line 167
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_40
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 169
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_41
    const-string v4, "vipcanread"

    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 171
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_42

    .line 172
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$vipcanread(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_42
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 174
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$vipcanread(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_43
    const-string v4, "pingfen"

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 176
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_44

    .line 177
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$pingfen(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :cond_44
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 179
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$pingfen(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_45
    const-string v4, "contentType"

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 181
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_46

    .line 182
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lg/a/r0;->realmSet$contentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :cond_46
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 184
    invoke-interface {v0, v5}, Lg/a/r0;->realmSet$contentType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_47
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 186
    :cond_48
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v2, :cond_49

    new-array p1, v1, [Lg/a/m;

    .line 187
    invoke-virtual {p0, v0, p1}, Lg/a/x;->L(Lg/a/e0;[Lg/a/m;)Lg/a/e0;

    move-result-object p0

    check-cast p0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    return-object p0

    .line 188
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "JSON object doesn\'t have the primary key field \'id\'."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getExpectedObjectSchemaInfo()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->expectedObjectSchemaInfo:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static getSimpleClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "DsItemBean"

    return-object v0
.end method

.method public static insert(Lg/a/x;Lcom/comeback/data/ui/ds/bean/DsItemBean;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lg/a/v;->e:Lg/a/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v1, v1, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v1, v1, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lg/a/a;->b:Lg/a/b0;

    .line 8
    iget-object v2, v2, Lg/a/b0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 11
    iget-object p0, p0, Lg/a/v;->c:Lg/a/f1/p;

    .line 12
    invoke-interface {p0}, Lg/a/f1/p;->l()J

    move-result-wide p0

    return-wide p0

    .line 13
    :cond_0
    const-class v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 14
    iget-object v1, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v1, v0}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 15
    iget-wide v9, v0, Lio/realm/internal/Table;->a:J

    .line 16
    iget-object p0, p0, Lg/a/x;->j:Lg/a/k0;

    .line 17
    const-class v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 18
    invoke-virtual {p0}, Lg/a/k0;->a()V

    .line 19
    iget-object p0, p0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {p0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object p0

    .line 20
    check-cast p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 21
    iget-wide v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 22
    invoke-interface {p1}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 23
    invoke-static {v9, v10, v1, v2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v9, v10, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_25

    .line 25
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v11

    .line 26
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {p1}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 28
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 29
    :cond_2
    invoke-interface {p1}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 30
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 31
    :cond_3
    invoke-interface {p1}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 32
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 33
    :cond_4
    invoke-interface {p1}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 34
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 35
    :cond_5
    invoke-interface {p1}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 36
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 37
    :cond_6
    invoke-interface {p1}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 38
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 39
    :cond_7
    invoke-interface {p1}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 40
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 41
    :cond_8
    invoke-interface {p1}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 42
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 43
    :cond_9
    invoke-interface {p1}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 44
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 45
    :cond_a
    invoke-interface {p1}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 46
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 47
    :cond_b
    invoke-interface {p1}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 48
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 49
    :cond_c
    invoke-interface {p1}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 50
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 51
    :cond_d
    invoke-interface {p1}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 52
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 53
    :cond_e
    invoke-interface {p1}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 54
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 55
    :cond_f
    invoke-interface {p1}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 56
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 57
    :cond_10
    invoke-interface {p1}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 58
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 59
    :cond_11
    invoke-interface {p1}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 60
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 61
    :cond_12
    invoke-interface {p1}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 62
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 63
    :cond_13
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 64
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 65
    :cond_14
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 66
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 67
    :cond_15
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 68
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 69
    :cond_16
    invoke-interface {p1}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 70
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 71
    :cond_17
    invoke-interface {p1}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 72
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 73
    :cond_18
    invoke-interface {p1}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 74
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 75
    :cond_19
    invoke-interface {p1}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 76
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 77
    :cond_1a
    invoke-interface {p1}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 78
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 79
    :cond_1b
    invoke-interface {p1}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 80
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 81
    :cond_1c
    invoke-interface {p1}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 82
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 83
    :cond_1d
    invoke-interface {p1}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 84
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 85
    :cond_1e
    invoke-interface {p1}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 86
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 87
    :cond_1f
    invoke-interface {p1}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 88
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 89
    :cond_20
    invoke-interface {p1}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 90
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 91
    :cond_21
    invoke-interface {p1}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 92
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 93
    :cond_22
    invoke-interface {p1}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 94
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 95
    :cond_23
    invoke-interface {p1}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 96
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    :cond_24
    return-wide v11

    .line 97
    :cond_25
    invoke-static {v3}, Lio/realm/internal/Table;->s(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static insert(Lg/a/x;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 20
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

    .line 98
    const-class v2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 99
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 100
    iget-wide v11, v2, Lio/realm/internal/Table;->a:J

    .line 101
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    .line 102
    const-class v4, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 103
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 104
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 105
    move-object v13, v3

    check-cast v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 106
    iget-wide v14, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 107
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 108
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 109
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    instance-of v3, v10, Lg/a/f1/n;

    if-eqz v3, :cond_2

    move-object v3, v10

    check-cast v3, Lg/a/f1/n;

    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 111
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    if-eqz v4, :cond_2

    .line 112
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 113
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    .line 114
    iget-object v4, v4, Lg/a/a;->b:Lg/a/b0;

    .line 115
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 116
    iget-object v5, v0, Lg/a/a;->b:Lg/a/b0;

    .line 117
    iget-object v5, v5, Lg/a/b0;->c:Ljava/lang/String;

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 120
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    .line 121
    invoke-interface {v3}, Lg/a/f1/p;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v10}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 123
    invoke-static {v11, v12, v14, v15}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v11, v12, v14, v15, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_26

    .line 125
    invoke-static {v2, v14, v15, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v16

    .line 126
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v10}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 128
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/16 v18, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    move-object/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v10

    .line 129
    :goto_2
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 130
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 131
    :cond_5
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 132
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 133
    :cond_6
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 134
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 135
    :cond_7
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 136
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 137
    :cond_8
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 138
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 139
    :cond_9
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 140
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 141
    :cond_a
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 142
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 143
    :cond_b
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 144
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 145
    :cond_c
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 146
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 147
    :cond_d
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 148
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 149
    :cond_e
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 150
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 151
    :cond_f
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 152
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 153
    :cond_10
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 154
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 155
    :cond_11
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 156
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 157
    :cond_12
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 158
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 159
    :cond_13
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 160
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 161
    :cond_14
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 162
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 163
    :cond_15
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 164
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 165
    :cond_16
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    .line 166
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 167
    :cond_17
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 168
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 169
    :cond_18
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 170
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 171
    :cond_19
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 172
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 173
    :cond_1a
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 174
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 175
    :cond_1b
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 176
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 177
    :cond_1c
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 178
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 179
    :cond_1d
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    .line 180
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 181
    :cond_1e
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 182
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 183
    :cond_1f
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 184
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 185
    :cond_20
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 186
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 187
    :cond_21
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 188
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 189
    :cond_22
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 190
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 191
    :cond_23
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_24

    .line 192
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 193
    :cond_24
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 194
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    .line 195
    :cond_25
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 196
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 197
    :cond_26
    invoke-static {v3}, Lio/realm/internal/Table;->s(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_27
    return-void
.end method

.method public static insertOrUpdate(Lg/a/x;Lcom/comeback/data/ui/ds/bean/DsItemBean;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lg/a/f1/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/a/f1/n;

    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lg/a/v;->e:Lg/a/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v1, v1, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v1, v1, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lg/a/a;->b:Lg/a/b0;

    .line 8
    iget-object v2, v2, Lg/a/b0;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v0}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object p0

    .line 11
    iget-object p0, p0, Lg/a/v;->c:Lg/a/f1/p;

    .line 12
    invoke-interface {p0}, Lg/a/f1/p;->l()J

    move-result-wide p0

    return-wide p0

    .line 13
    :cond_0
    const-class v0, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 14
    iget-object v1, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v1, v0}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 15
    iget-wide v9, v0, Lio/realm/internal/Table;->a:J

    .line 16
    iget-object p0, p0, Lg/a/x;->j:Lg/a/k0;

    .line 17
    const-class v1, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 18
    invoke-virtual {p0}, Lg/a/k0;->a()V

    .line 19
    iget-object p0, p0, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {p0, v1}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object p0

    .line 20
    check-cast p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 21
    iget-wide v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 22
    invoke-interface {p1}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 23
    invoke-static {v9, v10, v1, v2}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v9, v10, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 25
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    :cond_2
    move-wide v11, v4

    .line 26
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {p1}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 28
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 29
    :cond_3
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_1
    invoke-interface {p1}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 31
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 32
    :cond_4
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_2
    invoke-interface {p1}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 34
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 35
    :cond_5
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_3
    invoke-interface {p1}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 37
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 38
    :cond_6
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_4
    invoke-interface {p1}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 40
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 41
    :cond_7
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_5
    invoke-interface {p1}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 43
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 44
    :cond_8
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 45
    :goto_6
    invoke-interface {p1}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 46
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 47
    :cond_9
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 48
    :goto_7
    invoke-interface {p1}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 49
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 50
    :cond_a
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 51
    :goto_8
    invoke-interface {p1}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 52
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 53
    :cond_b
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 54
    :goto_9
    invoke-interface {p1}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 55
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 56
    :cond_c
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 57
    :goto_a
    invoke-interface {p1}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 58
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 59
    :cond_d
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 60
    :goto_b
    invoke-interface {p1}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 61
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 62
    :cond_e
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 63
    :goto_c
    invoke-interface {p1}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 64
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 65
    :cond_f
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 66
    :goto_d
    invoke-interface {p1}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 67
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 68
    :cond_10
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 69
    :goto_e
    invoke-interface {p1}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 70
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 71
    :cond_11
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 72
    :goto_f
    invoke-interface {p1}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 73
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    .line 74
    :cond_12
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 75
    :goto_10
    invoke-interface {p1}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 76
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11

    .line 77
    :cond_13
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 78
    :goto_11
    invoke-interface {p1}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 79
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12

    .line 80
    :cond_14
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 81
    :goto_12
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    .line 82
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13

    .line 83
    :cond_15
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 84
    :goto_13
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 85
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_14

    .line 86
    :cond_16
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 87
    :goto_14
    invoke-interface {p1}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 88
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15

    .line 89
    :cond_17
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 90
    :goto_15
    invoke-interface {p1}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_18

    .line 91
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16

    .line 92
    :cond_18
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 93
    :goto_16
    invoke-interface {p1}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 94
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_17

    .line 95
    :cond_19
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 96
    :goto_17
    invoke-interface {p1}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 97
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18

    .line 98
    :cond_1a
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 99
    :goto_18
    invoke-interface {p1}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 100
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19

    .line 101
    :cond_1b
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 102
    :goto_19
    invoke-interface {p1}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    .line 103
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a

    .line 104
    :cond_1c
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 105
    :goto_1a
    invoke-interface {p1}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 106
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1b

    .line 107
    :cond_1d
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 108
    :goto_1b
    invoke-interface {p1}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 109
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c

    .line 110
    :cond_1e
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 111
    :goto_1c
    invoke-interface {p1}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 112
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d

    .line 113
    :cond_1f
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 114
    :goto_1d
    invoke-interface {p1}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 115
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e

    .line 116
    :cond_20
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 117
    :goto_1e
    invoke-interface {p1}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 118
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f

    .line 119
    :cond_21
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 120
    :goto_1f
    invoke-interface {p1}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_22

    .line 121
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_20

    .line 122
    :cond_22
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 123
    :goto_20
    invoke-interface {p1}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 124
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_21

    .line 125
    :cond_23
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 126
    :goto_21
    invoke-interface {p1}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 127
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_22

    .line 128
    :cond_24
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 129
    :goto_22
    invoke-interface {p1}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 130
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_23

    .line 131
    :cond_25
    iget-wide v3, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v7, 0x0

    move-wide v1, v9

    move-wide v5, v11

    invoke-static/range {v1 .. v7}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_23
    return-wide v11
.end method

.method public static insertOrUpdate(Lg/a/x;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 20
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

    .line 132
    const-class v2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 133
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {v3, v2}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 134
    iget-wide v11, v2, Lio/realm/internal/Table;->a:J

    .line 135
    iget-object v3, v0, Lg/a/x;->j:Lg/a/k0;

    .line 136
    const-class v4, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 137
    invoke-virtual {v3}, Lg/a/k0;->a()V

    .line 138
    iget-object v3, v3, Lg/a/k0;->f:Lg/a/f1/b;

    invoke-virtual {v3, v4}, Lg/a/f1/b;->a(Ljava/lang/Class;)Lg/a/f1/c;

    move-result-object v3

    .line 139
    move-object v13, v3

    check-cast v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 140
    iget-wide v14, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 141
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 142
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 143
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    instance-of v3, v10, Lg/a/f1/n;

    if-eqz v3, :cond_1

    move-object v3, v10

    check-cast v3, Lg/a/f1/n;

    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 145
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    if-eqz v4, :cond_1

    .line 146
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v4

    .line 147
    iget-object v4, v4, Lg/a/v;->e:Lg/a/a;

    .line 148
    iget-object v4, v4, Lg/a/a;->b:Lg/a/b0;

    .line 149
    iget-object v4, v4, Lg/a/b0;->c:Ljava/lang/String;

    .line 150
    iget-object v5, v0, Lg/a/a;->b:Lg/a/b0;

    .line 151
    iget-object v5, v5, Lg/a/b0;->c:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    invoke-interface {v3}, Lg/a/f1/n;->realmGet$proxyState()Lg/a/v;

    move-result-object v3

    .line 154
    iget-object v3, v3, Lg/a/v;->c:Lg/a/f1/p;

    .line 155
    invoke-interface {v3}, Lg/a/f1/p;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v10}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 157
    invoke-static {v11, v12, v14, v15}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_1

    .line 158
    :cond_2
    invoke-static {v11, v12, v14, v15, v3}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 159
    invoke-static {v2, v14, v15, v3}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v3

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    .line 160
    :goto_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-interface {v10}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 162
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/16 v18, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    move-object/from16 v19, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    :cond_4
    move-object/from16 v19, v10

    .line 163
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 164
    :goto_3
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 165
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 166
    :cond_5
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 167
    :goto_4
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 168
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 169
    :cond_6
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 170
    :goto_5
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 171
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 172
    :cond_7
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 173
    :goto_6
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 174
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 175
    :cond_8
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 176
    :goto_7
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 177
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 178
    :cond_9
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 179
    :goto_8
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 180
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 181
    :cond_a
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 182
    :goto_9
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 183
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 184
    :cond_b
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 185
    :goto_a
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 186
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 187
    :cond_c
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 188
    :goto_b
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 189
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 190
    :cond_d
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 191
    :goto_c
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 192
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 193
    :cond_e
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 194
    :goto_d
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 195
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 196
    :cond_f
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 197
    :goto_e
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 198
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_f

    .line 199
    :cond_10
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 200
    :goto_f
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 201
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_10

    .line 202
    :cond_11
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 203
    :goto_10
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 204
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_11

    .line 205
    :cond_12
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 206
    :goto_11
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 207
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_12

    .line 208
    :cond_13
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 209
    :goto_12
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 210
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_13

    .line 211
    :cond_14
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 212
    :goto_13
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 213
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_14

    .line 214
    :cond_15
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 215
    :goto_14
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 216
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_15

    .line 217
    :cond_16
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 218
    :goto_15
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    .line 219
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_16

    .line 220
    :cond_17
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 221
    :goto_16
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 222
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_17

    .line 223
    :cond_18
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 224
    :goto_17
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_19

    .line 225
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_18

    .line 226
    :cond_19
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 227
    :goto_18
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 228
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_19

    .line 229
    :cond_1a
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 230
    :goto_19
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 231
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1a

    .line 232
    :cond_1b
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 233
    :goto_1a
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 234
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1b

    .line 235
    :cond_1c
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 236
    :goto_1b
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d

    .line 237
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1c

    .line 238
    :cond_1d
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 239
    :goto_1c
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1e

    .line 240
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1d

    .line 241
    :cond_1e
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 242
    :goto_1d
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 243
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1e

    .line 244
    :cond_1f
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 245
    :goto_1e
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 246
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1f

    .line 247
    :cond_20
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 248
    :goto_1f
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 249
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_20

    .line 250
    :cond_21
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 251
    :goto_20
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_22

    .line 252
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_21

    .line 253
    :cond_22
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 254
    :goto_21
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 255
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_22

    .line 256
    :cond_23
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 257
    :goto_22
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_24

    .line 258
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_23

    .line 259
    :cond_24
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 260
    :goto_23
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 261
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_24

    .line 262
    :cond_25
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 263
    :goto_24
    invoke-interface/range {v19 .. v19}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_26

    .line 264
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v10}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 265
    :cond_26
    iget-wide v5, v13, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    const/4 v9, 0x0

    move-wide v3, v11

    move-wide/from16 v7, v16

    invoke-static/range {v3 .. v9}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    goto/16 :goto_0

    :cond_27
    return-void
.end method

.method public static newProxyInstance(Lg/a/a;Lg/a/f1/p;)Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;
    .locals 4

    .line 1
    sget-object v0, Lg/a/a;->i:Lg/a/a$d;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a$c;

    .line 2
    invoke-virtual {p0}, Lg/a/a;->G()Lg/a/k0;

    move-result-object v1

    const-class v2, Lcom/comeback/data/ui/ds/bean/DsItemBean;

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
    new-instance p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    invoke-direct {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;-><init>()V

    .line 12
    invoke-virtual {v0}, Lg/a/a$c;->a()V

    return-object p0
.end method

.method public static update(Lg/a/x;Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;Lcom/comeback/data/ui/ds/bean/DsItemBean;Lcom/comeback/data/ui/ds/bean/DsItemBean;Ljava/util/Map;Ljava/util/Set;)Lcom/comeback/data/ui/ds/bean/DsItemBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/x;",
            "Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;",
            "Ljava/util/Map<",
            "Lg/a/e0;",
            "Lg/a/f1/n;",
            ">;",
            "Ljava/util/Set<",
            "Lg/a/m;",
            ">;)",
            "Lcom/comeback/data/ui/ds/bean/DsItemBean;"
        }
    .end annotation

    .line 1
    const-class p4, Lcom/comeback/data/ui/ds/bean/DsItemBean;

    .line 2
    iget-object p0, p0, Lg/a/x;->j:Lg/a/k0;

    invoke-virtual {p0, p4}, Lg/a/k0;->e(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 3
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->e:J

    invoke-direct {p4, p0, v0, v1, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;JLjava/util/Set;)V

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$title()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$create_time()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$update_time()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$sort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$status()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$view()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$image()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 13
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$type()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 14
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$auther()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 15
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$desc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 16
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$mark()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 17
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 18
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 19
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 20
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 21
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 22
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$isfree()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 23
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$cjid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 24
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 25
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$cjname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 26
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$keyword()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 27
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 28
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$searchnums()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 29
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 30
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 31
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$xianmian()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 32
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$cover()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 33
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$ishot()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 34
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$issole()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 35
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$isnew()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 36
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 37
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 38
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$pingfen()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 39
    iget-wide p0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {p3}, Lg/a/r0;->realmGet$contentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->g(JLjava/lang/String;)V

    .line 40
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
    const-class v2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;

    .line 3
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 4
    iget-object v2, v2, Lg/a/v;->e:Lg/a/a;

    .line 5
    iget-object v2, v2, Lg/a/a;->b:Lg/a/b0;

    .line 6
    iget-object v2, v2, Lg/a/b0;->c:Ljava/lang/String;

    .line 7
    iget-object v3, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v2, v2, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    invoke-interface {v2}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->j()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 20
    iget-object v2, v2, Lg/a/v;->c:Lg/a/f1/p;

    .line 21
    invoke-interface {v2}, Lg/a/f1/p;->l()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    iget-object v2, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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
    check-cast v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iput-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 5
    new-instance v1, Lg/a/v;

    invoke-direct {v1, p0}, Lg/a/v;-><init>(Lg/a/e0;)V

    iput-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

.method public realmGet$auther()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cjid()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cjname()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cjstatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$contentType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cover()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$create_time()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$desc()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$diyu_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$duzhequn_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$image()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isfree()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$ishot()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isjingpin()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isnew()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$issole()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$keyword()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$lanmu_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$last_chapter()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$last_chapter_title()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mark()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mhstatus()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$pingfen()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

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
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    return-object v0
.end method

.method public realmGet$searchnums()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$sort()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$status()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$ticai_id()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$title()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$tjswitch()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$type()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$update_time()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$view()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$vipcanread()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$xianmian()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 2
    iget-object v0, v0, Lg/a/v;->e:Lg/a/a;

    .line 3
    invoke-virtual {v0}, Lg/a/a;->f()V

    .line 4
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 5
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 6
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    invoke-interface {v0, v1, v2}, Lg/a/f1/p;->q(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$auther(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$cjid(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$cjname(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$cjstatus(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$contentType(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$cover(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$create_time(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$desc(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$diyu_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$duzhequn_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$h(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    const-string v0, "Primary key field \'id\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public realmSet$image(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$isfree(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$ishot(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$isjingpin(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$isnew(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$issole(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$keyword(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$lanmu_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$last_chapter(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$last_chapter_title(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mark(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$mhstatus(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$pingfen(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$searchnums(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$sort(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$status(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$ticai_id(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$title(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$tjswitch(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$type(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$update_time(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$view(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$vipcanread(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    invoke-interface {v0, v1, v2, p1}, Lg/a/f1/p;->a(JLjava/lang/String;)V

    return-void
.end method

.method public realmSet$xianmian(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

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

    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v2, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    invoke-interface {v0}, Lg/a/f1/p;->l()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->q(JJZ)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Lg/a/f1/p;->d()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v8, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

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
    iget-object p1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 10
    iget-object p1, p1, Lg/a/v;->c:Lg/a/f1/p;

    .line 11
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v0, v0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    invoke-interface {p1, v0, v1}, Lg/a/f1/p;->f(J)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->proxyState:Lg/a/v;

    .line 13
    iget-object v0, v0, Lg/a/v;->c:Lg/a/f1/p;

    .line 14
    iget-object v1, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->columnInfo:Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    iget-wide v1, v1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

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
    const-string v0, "DsItemBean = proxy["

    const-string v1, "{id:"

    .line 2
    invoke-static {v0, v1}, Lf/b/a/a/a;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "}"

    const-string v4, ","

    const-string v5, "{title:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v5, "{lanmu_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$lanmu_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    const-string v5, "{create_time:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$create_time()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$create_time()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const-string v5, "{update_time:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$update_time()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$update_time()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    const-string v5, "{sort:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$sort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$sort()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    const-string v5, "{status:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$status()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    const-string v5, "{view:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$view()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$view()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    const-string v5, "{image:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$image()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    const-string v5, "{type:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$type()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    const-string v5, "{auther:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$auther()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$auther()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    const-string v5, "{desc:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$desc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$desc()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    const-string v5, "{mark:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$mark()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$mark()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_d
    move-object v1, v2

    :goto_c
    const-string v5, "{ticai_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$ticai_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_e
    move-object v1, v2

    :goto_d
    const-string v5, "{duzhequn_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$duzhequn_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_f
    move-object v1, v2

    :goto_e
    const-string v5, "{diyu_id:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$diyu_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_10
    move-object v1, v2

    :goto_f
    const-string v5, "{mhstatus:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$mhstatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_11
    move-object v1, v2

    :goto_10
    const-string v5, "{tjswitch:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$tjswitch()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_12
    move-object v1, v2

    :goto_11
    const-string v5, "{isfree:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isfree()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isfree()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_13
    move-object v1, v2

    :goto_12
    const-string v5, "{cjid:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjid()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_14
    move-object v1, v2

    :goto_13
    const-string v5, "{cjstatus:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjstatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_15
    move-object v1, v2

    :goto_14
    const-string v5, "{cjname:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjname()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cjname()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_16
    move-object v1, v2

    :goto_15
    const-string v5, "{keyword:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$keyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$keyword()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_17
    move-object v1, v2

    :goto_16
    const-string v5, "{last_chapter_title:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$last_chapter_title()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_18
    move-object v1, v2

    :goto_17
    const-string v5, "{searchnums:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$searchnums()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_19
    move-object v1, v2

    :goto_18
    const-string v5, "{last_chapter:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$last_chapter()Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_1a
    move-object v1, v2

    :goto_19
    const-string v5, "{isjingpin:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isjingpin()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_1b
    move-object v1, v2

    :goto_1a
    const-string v5, "{xianmian:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$xianmian()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_1c
    move-object v1, v2

    :goto_1b
    const-string v5, "{cover:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cover()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$cover()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1d
    move-object v1, v2

    :goto_1c
    const-string v5, "{ishot:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$ishot()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$ishot()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1e
    move-object v1, v2

    :goto_1d
    const-string v5, "{issole:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$issole()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$issole()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1f
    move-object v1, v2

    :goto_1e
    const-string v5, "{isnew:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isnew()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$isnew()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_20
    move-object v1, v2

    :goto_1f
    const-string v5, "{h:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$h()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_21
    move-object v1, v2

    :goto_20
    const-string v5, "{vipcanread:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$vipcanread()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_22
    move-object v1, v2

    :goto_21
    const-string v5, "{pingfen:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$pingfen()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_23
    move-object v1, v2

    :goto_22
    const-string v5, "{contentType:"

    invoke-static {v0, v1, v3, v4, v5}, Lf/b/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$contentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;->realmGet$contentType()Ljava/lang/String;

    move-result-object v2

    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
