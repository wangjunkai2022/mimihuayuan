.class public final Lf/i/a/a/n1/k;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/n1/k$b;
    }
.end annotation


# static fields
.field public static c:I

.field public static d:Z


# instance fields
.field public final a:Lf/i/a/a/n1/k$b;

.field public b:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/n1/k$b;Landroid/graphics/SurfaceTexture;ZLf/i/a/a/n1/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iput-object p1, p0, Lf/i/a/a/n1/k;->a:Lf/i/a/a/n1/k$b;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    sget-object v0, Lf/i/a/a/m1/h0;->c:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lf/i/a/a/m1/h0;->d:Ljava/lang/String;

    const-string v3, "XT1650"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 2
    :cond_1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 3
    :cond_2
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 4
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    const-string v0, "EGL_EXT_protected_content"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    const-string v0, "EGL_KHR_surfaceless_context"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Z
    .locals 5

    const-class v0, Lf/i/a/a/n1/k;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lf/i/a/a/n1/k;->d:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2
    sget v1, Lf/i/a/a/m1/h0;->a:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lf/i/a/a/n1/k;->a(Landroid/content/Context;)I

    move-result p0

    :goto_0
    sput p0, Lf/i/a/a/n1/k;->c:I

    .line 3
    sput-boolean v2, Lf/i/a/a/n1/k;->d:Z

    .line 4
    :cond_1
    sget p0, Lf/i/a/a/n1/k;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;Z)Lf/i/a/a/n1/k;
    .locals 4

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lf/i/a/a/n1/k;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lc/a/a/b/g/h;->v(Z)V

    .line 3
    new-instance p0, Lf/i/a/a/n1/k$b;

    invoke-direct {p0}, Lf/i/a/a/n1/k$b;-><init>()V

    if-eqz p1, :cond_2

    .line 4
    sget p1, Lf/i/a/a/n1/k;->c:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_2
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lf/i/a/a/n1/k$b;->b:Landroid/os/Handler;

    .line 7
    new-instance v3, Lf/i/a/a/m1/l;

    invoke-direct {v3, v2}, Lf/i/a/a/m1/l;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lf/i/a/a/n1/k$b;->a:Lf/i/a/a/m1/l;

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Lf/i/a/a/n1/k$b;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 10
    :goto_3
    iget-object p1, p0, Lf/i/a/a/n1/k$b;->e:Lf/i/a/a/n1/k;

    if-nez p1, :cond_3

    iget-object p1, p0, Lf/i/a/a/n1/k$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Lf/i/a/a/n1/k$b;->c:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    const/4 v0, 0x1

    goto :goto_3

    .line 12
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 14
    :cond_4
    iget-object p1, p0, Lf/i/a/a/n1/k$b;->d:Ljava/lang/RuntimeException;

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lf/i/a/a/n1/k$b;->c:Ljava/lang/Error;

    if-nez p1, :cond_5

    .line 16
    iget-object p0, p0, Lf/i/a/a/n1/k$b;->e:Lf/i/a/a/n1/k;

    invoke-static {p0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 17
    :cond_5
    throw p1

    .line 18
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 20
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported prior to API level 17"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/n1/k;->a:Lf/i/a/a/n1/k$b;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lf/i/a/a/n1/k;->b:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lf/i/a/a/n1/k;->a:Lf/i/a/a/n1/k$b;

    .line 5
    iget-object v2, v1, Lf/i/a/a/n1/k$b;->b:Landroid/os/Handler;

    invoke-static {v2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v1, Lf/i/a/a/n1/k$b;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lf/i/a/a/n1/k;->b:Z

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
