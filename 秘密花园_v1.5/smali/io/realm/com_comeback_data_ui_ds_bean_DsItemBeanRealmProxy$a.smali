.class public final Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;
.super Lg/a/f1/c;
.source "com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:J

.field public J:J

.field public K:J

.field public L:J

.field public M:J

.field public N:J

.field public O:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x24

    .line 1
    invoke-direct {p0, v1, v0}, Lg/a/f1/c;-><init>(IZ)V

    const-string v0, "DsItemBean"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    const-string v0, "title"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    const-string v0, "lanmu_id"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    const-string v0, "create_time"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    const-string v0, "update_time"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    const-string v0, "sort"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    const-string v0, "status"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    const-string v0, "view"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    const-string v0, "image"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    const-string v0, "type"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    const-string v0, "auther"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    const-string v0, "desc"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    const-string v0, "mark"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    const-string v0, "ticai_id"

    .line 16
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    const-string v0, "duzhequn_id"

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    const-string v0, "diyu_id"

    .line 18
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    const-string v0, "mhstatus"

    .line 19
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    const-string v0, "tjswitch"

    .line 20
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    const-string v0, "isfree"

    .line 21
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    const-string v0, "cjid"

    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    const-string v0, "cjstatus"

    .line 23
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    const-string v0, "cjname"

    .line 24
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    const-string v0, "keyword"

    const-string v1, "keyword"

    .line 25
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    const-string v0, "last_chapter_title"

    const-string v1, "last_chapter_title"

    .line 26
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    const-string v0, "searchnums"

    const-string v1, "searchnums"

    .line 27
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    const-string v0, "last_chapter"

    const-string v1, "last_chapter"

    .line 28
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    const-string v0, "isjingpin"

    const-string v1, "isjingpin"

    .line 29
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    const-string v0, "xianmian"

    const-string v1, "xianmian"

    .line 30
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    const-string v0, "cover"

    const-string v1, "cover"

    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    const-string v0, "ishot"

    const-string v1, "ishot"

    .line 32
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    const-string v0, "issole"

    const-string v1, "issole"

    .line 33
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    const-string v0, "isnew"

    const-string v1, "isnew"

    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    const-string v0, "h"

    const-string v1, "h"

    .line 35
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    const-string v0, "vipcanread"

    const-string v1, "vipcanread"

    .line 36
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    const-string v0, "pingfen"

    const-string v1, "pingfen"

    .line 37
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    const-string v0, "contentType"

    const-string v1, "contentType"

    .line 38
    invoke-virtual {p0, v0, v1, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    .line 39
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->e:J

    return-void
.end method


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 2
    check-cast p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;

    .line 3
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->f:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->g:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->h:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->i:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->j:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->k:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->l:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->m:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->n:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->o:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->p:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->q:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->r:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->s:J

    .line 17
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->t:J

    .line 18
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->u:J

    .line 19
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->v:J

    .line 20
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->w:J

    .line 21
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->x:J

    .line 22
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->y:J

    .line 23
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->z:J

    .line 24
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->A:J

    .line 25
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->B:J

    .line 26
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->C:J

    .line 27
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->D:J

    .line 28
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->E:J

    .line 29
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->F:J

    .line 30
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->G:J

    .line 31
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->H:J

    .line 32
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->I:J

    .line 33
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->J:J

    .line 34
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->K:J

    .line 35
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->L:J

    .line 36
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->M:J

    .line 37
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->N:J

    .line 38
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->O:J

    .line 39
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->e:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ds_bean_DsItemBeanRealmProxy$a;->e:J

    return-void
.end method
