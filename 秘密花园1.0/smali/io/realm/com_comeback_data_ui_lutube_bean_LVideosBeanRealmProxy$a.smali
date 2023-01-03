.class public final Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;
.super Lg/a/f1/c;
.source "com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy;
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


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 1
    invoke-direct {p0, v1, v0}, Lg/a/f1/c;-><init>(IZ)V

    const-string v0, "LVideosBean"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "video_id"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->f:J

    const-string v0, "video_title"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->g:J

    const-string v0, "actor"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->h:J

    const-string v0, "thumb"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->i:J

    const-string v0, "cover"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->j:J

    const-string v0, "upload_date"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->k:J

    const-string v0, "release_date"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->l:J

    const-string v0, "video_duration"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->m:J

    const-string v0, "video_like"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->n:J

    .line 12
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->e:J

    return-void
.end method


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;

    .line 2
    check-cast p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;

    .line 3
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->f:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->f:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->g:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->g:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->h:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->h:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->i:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->i:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->j:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->j:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->k:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->k:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->l:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->l:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->m:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->m:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->n:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->n:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->e:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_lutube_bean_LVideosBeanRealmProxy$a;->e:J

    return-void
.end method
