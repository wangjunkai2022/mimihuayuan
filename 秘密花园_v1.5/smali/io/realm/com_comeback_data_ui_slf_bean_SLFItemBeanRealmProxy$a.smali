.class public final Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;
.super Lg/a/f1/c;
.source "com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 1
    invoke-direct {p0, v1, v0}, Lg/a/f1/c;-><init>(IZ)V

    const-string v0, "SLFItemBean"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->f:J

    const-string v0, "name"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->g:J

    const-string v0, "click"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->h:J

    const-string v0, "favorite"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->i:J

    const-string v0, "img"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->j:J

    const-string v0, "sale"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->k:J

    const-string v0, "updateTime"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->l:J

    const-string v0, "description"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->m:J

    const-string v0, "summary"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->n:J

    const-string v0, "point"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->o:J

    const-string v0, "status"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->p:J

    const-string v0, "type"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->q:J

    const-string v0, "tagStr"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->r:J

    const-string v0, "author"

    .line 16
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->s:J

    const-string v0, "isVideo"

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->t:J

    .line 18
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->e:J

    return-void
.end method


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;

    .line 2
    check-cast p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;

    .line 3
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->f:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->f:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->g:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->g:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->h:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->h:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->i:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->i:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->j:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->j:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->k:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->k:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->l:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->l:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->m:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->m:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->n:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->n:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->o:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->o:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->p:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->p:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->q:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->q:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->r:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->r:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->s:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->s:J

    .line 17
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->t:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->t:J

    .line 18
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->e:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_slf_bean_SLFItemBeanRealmProxy$a;->e:J

    return-void
.end method
