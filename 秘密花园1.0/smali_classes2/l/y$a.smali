.class public Ll/y$a;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/y;->X(Ll/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll/f;

.field public final synthetic b:Ll/y;


# direct methods
.method public constructor <init>(Ll/y;Ll/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/y$a;->b:Ll/y;

    iput-object p2, p0, Ll/y$a;->a:Ll/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Ll/y$a;->b:Ll/y;

    invoke-virtual {p1, p2}, Ll/y;->b(Li/h0;)Ll/g0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p2, p0, Ll/y$a;->a:Ll/f;

    iget-object v0, p0, Ll/y$a;->b:Ll/y;

    invoke-interface {p2, v0, p1}, Ll/f;->a(Ll/d;Ll/g0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 5
    invoke-static {p1}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 6
    :try_start_2
    iget-object p2, p0, Ll/y$a;->a:Ll/f;

    iget-object v0, p0, Ll/y$a;->b:Ll/y;

    invoke-interface {p2, v0, p1}, Ll/f;->b(Ll/d;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {p1}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Ll/y$a;->a:Ll/f;

    iget-object v0, p0, Ll/y$a;->b:Ll/y;

    invoke-interface {p1, v0, p2}, Ll/f;->b(Ll/d;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Ll/l0;->o(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
