.class public final Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;
.super Lg/a/f1/c;
.source "com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy;
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


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xd

    .line 1
    invoke-direct {p0, v1, v0}, Lg/a/f1/c;-><init>(IZ)V

    const-string v0, "BaComicsBean"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "author"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->f:J

    const-string v0, "describes"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->g:J

    const-string v0, "follow_num"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->h:J

    const-string v0, "heat"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->i:J

    const-string v0, "is_adult"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->j:J

    const-string v0, "is_end"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->k:J

    const-string v0, "show_id"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->l:J

    const-string v0, "small_picture"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->m:J

    const-string v0, "title"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->n:J

    const-string v0, "total"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->o:J

    const-string v0, "update_episodes"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->p:J

    const-string v0, "update_time"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->q:J

    const-string v0, "watch_num"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->r:J

    .line 16
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->e:J

    return-void
.end method


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;

    .line 2
    check-cast p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;

    .line 3
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->f:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->f:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->g:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->g:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->h:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->h:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->i:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->i:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->j:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->j:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->k:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->k:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->l:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->l:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->m:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->m:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->n:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->n:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->o:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->o:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->p:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->p:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->q:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->q:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->r:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->r:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->e:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_ba_bean_BaComicsBeanRealmProxy$a;->e:J

    return-void
.end method
