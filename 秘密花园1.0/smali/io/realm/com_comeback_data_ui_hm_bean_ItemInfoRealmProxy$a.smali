.class public final Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;
.super Lg/a/f1/c;
.source "com_comeback_data_ui_hm_bean_ItemInfoRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy;
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


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x7

    .line 1
    invoke-direct {p0, v1, v0}, Lg/a/f1/c;-><init>(IZ)V

    const-string v0, "ItemInfo"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->a(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "type"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->f:J

    const-string v0, "id"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->g:J

    const-string v0, "image"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->h:J

    const-string v0, "title"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->i:J

    const-string v0, "desc"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->j:J

    const-string v0, "author"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->k:J

    const-string v0, "update"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lg/a/f1/c;->a(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->l:J

    .line 10
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->e:J

    return-void
.end method


# virtual methods
.method public final b(Lg/a/f1/c;Lg/a/f1/c;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;

    .line 2
    check-cast p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;

    .line 3
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->f:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->f:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->g:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->g:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->h:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->h:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->i:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->i:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->j:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->j:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->k:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->k:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->l:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->l:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->e:J

    iput-wide v0, p2, Lio/realm/com_comeback_data_ui_hm_bean_ItemInfoRealmProxy$a;->e:J

    return-void
.end method
