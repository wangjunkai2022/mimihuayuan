.class public Lf/d/a/o/o/y/a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/o/y/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "Lf/d/a/o/o/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lf/d/a/o/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/d/a/o/o/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/m<",
            "Lf/d/a/o/o/g;",
            "Lf/d/a/o/o/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lf/d/a/o/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/d/a/o/g;

    move-result-object v0

    sput-object v0, Lf/d/a/o/o/y/a;->b:Lf/d/a/o/g;

    return-void
.end method

.method public constructor <init>(Lf/d/a/o/o/m;)V
    .locals 0
    .param p1    # Lf/d/a/o/o/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/m<",
            "Lf/d/a/o/o/g;",
            "Lf/d/a/o/o/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/o/y/a;->a:Lf/d/a/o/o/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/o/g;

    .line 2
    iget-object p2, p0, Lf/d/a/o/o/y/a;->a:Lf/d/a/o/o/m;

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0, v0}, Lf/d/a/o/o/m$b;->a(Ljava/lang/Object;II)Lf/d/a/o/o/m$b;

    move-result-object v1

    .line 4
    iget-object p2, p2, Lf/d/a/o/o/m;->a:Lf/d/a/u/f;

    invoke-virtual {p2, v1}, Lf/d/a/u/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    sget-object v2, Lf/d/a/o/o/m$b;->d:Ljava/util/Queue;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lf/d/a/o/o/m$b;->d:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    check-cast p2, Lf/d/a/o/o/g;

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lf/d/a/o/o/y/a;->a:Lf/d/a/o/o/m;

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p1, v0, v0}, Lf/d/a/o/o/m$b;->a(Ljava/lang/Object;II)Lf/d/a/o/o/m$b;

    move-result-object p3

    .line 11
    iget-object p2, p2, Lf/d/a/o/o/m;->a:Lf/d/a/u/f;

    invoke-virtual {p2, p3, p1}, Lf/d/a/u/f;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    throw p3

    :cond_1
    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_2
    :goto_0
    sget-object p2, Lf/d/a/o/o/y/a;->b:Lf/d/a/o/g;

    invoke-virtual {p4, p2}, Lf/d/a/o/h;->c(Lf/d/a/o/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 15
    new-instance p3, Lf/d/a/o/o/n$a;

    new-instance p4, Lf/d/a/o/m/j;

    invoke-direct {p4, p1, p2}, Lf/d/a/o/m/j;-><init>(Lf/d/a/o/o/g;I)V

    invoke-direct {p3, p1, p4}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p3
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/o/g;

    const/4 p1, 0x1

    return p1
.end method
