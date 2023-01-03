.class public Lg/a/b0$a;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:[B

.field public d:J

.field public e:Lg/a/d0;

.field public f:Z

.field public g:Lio/realm/internal/OsRealmConfig$c;

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lg/a/e0;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Lg/a/m1/b;

.field public k:Z

.field public l:Lio/realm/CompactOnLaunchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/a/b0$a;->h:Ljava/util/HashSet;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/a/b0$a;->i:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lg/a/f1/m;->a(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lg/a/b0$a;->a:Ljava/io/File;

    const-string p1, "default.realm"

    .line 6
    iput-object p1, p0, Lg/a/b0$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lg/a/b0$a;->c:[B

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lg/a/b0$a;->d:J

    .line 9
    iput-object p1, p0, Lg/a/b0$a;->e:Lg/a/d0;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lg/a/b0$a;->f:Z

    .line 11
    sget-object v1, Lio/realm/internal/OsRealmConfig$c;->a:Lio/realm/internal/OsRealmConfig$c;

    iput-object v1, p0, Lg/a/b0$a;->g:Lio/realm/internal/OsRealmConfig$c;

    .line 12
    iput-boolean v0, p0, Lg/a/b0$a;->k:Z

    .line 13
    iput-object p1, p0, Lg/a/b0$a;->l:Lio/realm/CompactOnLaunchCallback;

    .line 14
    sget-object p1, Lg/a/b0;->p:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lg/a/b0$a;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lg/a/b0;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lg/a/b0$a;->k:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Only Realms provided using \'assetFile(path)\' can be marked read-only. No such Realm was provided."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    iget-object v0, v1, Lg/a/b0$a;->j:Lg/a/m1/b;

    if-nez v0, :cond_1

    invoke-static {}, Lg/a/b0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lg/a/m1/a;

    invoke-direct {v0}, Lg/a/m1/a;-><init>()V

    iput-object v0, v1, Lg/a/b0$a;->j:Lg/a/m1/b;

    .line 5
    :cond_1
    new-instance v0, Lg/a/b0;

    iget-object v3, v1, Lg/a/b0$a;->a:Ljava/io/File;

    iget-object v4, v1, Lg/a/b0$a;->b:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v5, v1, Lg/a/b0$a;->a:Ljava/io/File;

    iget-object v6, v1, Lg/a/b0$a;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    .line 7
    iget-object v7, v1, Lg/a/b0$a;->c:[B

    iget-wide v8, v1, Lg/a/b0$a;->d:J

    iget-object v10, v1, Lg/a/b0$a;->e:Lg/a/d0;

    iget-boolean v11, v1, Lg/a/b0$a;->f:Z

    iget-object v12, v1, Lg/a/b0$a;->g:Lio/realm/internal/OsRealmConfig$c;

    iget-object v2, v1, Lg/a/b0$a;->h:Ljava/util/HashSet;

    iget-object v13, v1, Lg/a/b0$a;->i:Ljava/util/HashSet;

    .line 8
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 9
    new-instance v2, Lg/a/f1/v/b;

    sget-object v14, Lg/a/b0;->q:Lg/a/f1/o;

    invoke-direct {v2, v14, v13}, Lg/a/f1/v/b;-><init>(Lg/a/f1/o;Ljava/util/Collection;)V

    :goto_0
    move-object v13, v2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/a/b0;->b(Ljava/lang/String;)Lg/a/f1/o;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v13

    new-array v13, v13, [Lg/a/f1/o;

    const/4 v15, 0x0

    .line 13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lg/a/b0;->b(Ljava/lang/String;)Lg/a/f1/o;

    move-result-object v16

    aput-object v16, v13, v15

    add-int/2addr v15, v14

    goto :goto_1

    .line 15
    :cond_4
    new-instance v2, Lg/a/f1/v/a;

    invoke-direct {v2, v13}, Lg/a/f1/v/a;-><init>([Lg/a/f1/o;)V

    goto :goto_0

    .line 16
    :goto_2
    iget-object v14, v1, Lg/a/b0$a;->j:Lg/a/m1/b;

    const/4 v15, 0x0

    iget-boolean v2, v1, Lg/a/b0$a;->k:Z

    move/from16 v16, v2

    iget-object v2, v1, Lg/a/b0$a;->l:Lio/realm/CompactOnLaunchCallback;

    move-object/from16 v17, v2

    const/16 v18, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v18}, Lg/a/b0;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLg/a/d0;ZLio/realm/internal/OsRealmConfig$c;Lg/a/f1/o;Lg/a/m1/b;Lg/a/x$a;ZLio/realm/CompactOnLaunchCallback;Z)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 17
    new-instance v0, Lio/realm/exceptions/RealmFileException;

    sget-object v4, Lio/realm/exceptions/RealmFileException$Kind;->ACCESS_ERROR:Lio/realm/exceptions/RealmFileException$Kind;

    const-string v5, "Could not resolve the canonical path to the Realm file: "

    invoke-static {v5}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2, v3}, Lio/realm/exceptions/RealmFileException;-><init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
