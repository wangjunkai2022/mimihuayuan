.class public Lf/i/a/a/e1/l;
.super Ljava/lang/Object;
.source "DefaultDownloaderFactory.java"

# interfaces
.implements Lf/i/a/a/e1/x;


# static fields
.field public static final b:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/e1/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/e1/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/e1/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/i/a/a/e1/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "f.i.a.a.h1.t0.l.a"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lf/i/a/a/e1/l;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 3
    :goto_0
    sput-object v1, Lf/i/a/a/e1/l;->b:Ljava/lang/reflect/Constructor;

    :try_start_1
    const-string v1, "f.i.a.a.h1.u0.s.a"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lf/i/a/a/e1/l;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    .line 6
    :goto_1
    sput-object v1, Lf/i/a/a/e1/l;->c:Ljava/lang/reflect/Constructor;

    :try_start_2
    const-string v1, "f.i.a.a.h1.v0.f.a"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lf/i/a/a/e1/l;->c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9
    :catch_2
    sput-object v0, Lf/i/a/a/e1/l;->d:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/e1/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/l;->a:Lf/i/a/a/e1/w;

    return-void
.end method

.method public static c(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/e1/v;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lf/i/a/a/e1/v;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lf/i/a/a/e1/w;

    aput-object v2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Downloader constructor missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lf/i/a/a/e1/u;)Lf/i/a/a/e1/v;
    .locals 6

    .line 1
    iget-object v0, p1, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe60

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x193ef

    if-eq v1, v2, :cond_2

    const v2, 0x2eef92

    if-eq v1, v2, :cond_1

    const v2, 0x43720b8b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "progressive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "dash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "hls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    .line 2
    sget-object v0, Lf/i/a/a/e1/l;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Lf/i/a/a/e1/l;->b(Lf/i/a/a/e1/u;Ljava/lang/reflect/Constructor;)Lf/i/a/a/e1/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_6
    sget-object v0, Lf/i/a/a/e1/l;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Lf/i/a/a/e1/l;->b(Lf/i/a/a/e1/u;Ljava/lang/reflect/Constructor;)Lf/i/a/a/e1/v;

    move-result-object p1

    return-object p1

    .line 5
    :cond_7
    sget-object v0, Lf/i/a/a/e1/l;->b:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, v0}, Lf/i/a/a/e1/l;->b(Lf/i/a/a/e1/u;Ljava/lang/reflect/Constructor;)Lf/i/a/a/e1/v;

    move-result-object p1

    return-object p1

    .line 6
    :cond_8
    new-instance v0, Lf/i/a/a/e1/a0;

    iget-object v1, p1, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    iget-object p1, p1, Lf/i/a/a/e1/u;->e:Ljava/lang/String;

    iget-object v2, p0, Lf/i/a/a/e1/l;->a:Lf/i/a/a/e1/w;

    invoke-direct {v0, v1, p1, v2}, Lf/i/a/a/e1/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Lf/i/a/a/e1/w;)V

    return-object v0
.end method

.method public final b(Lf/i/a/a/e1/u;Ljava/lang/reflect/Constructor;)Lf/i/a/a/e1/v;
    .locals 3
    .param p2    # Ljava/lang/reflect/Constructor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/e1/u;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/e1/v;",
            ">;)",
            "Lf/i/a/a/e1/v;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    iget-object v2, p1, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lf/i/a/a/e1/l;->a:Lf/i/a/a/e1/w;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/i/a/a/e1/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to instantiate downloader for: "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Module missing for: "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
