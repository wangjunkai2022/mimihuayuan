.class public final Lf/i/a/a/m1/l;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/m1/l$b;,
        Lf/i/a/a/m1/l$c;
    }
.end annotation


# static fields
.field public static final h:[I


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:[I

.field public final c:Lf/i/a/a/m1/l$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Landroid/opengl/EGLDisplay;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Landroid/opengl/EGLContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/opengl/EGLSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lf/i/a/a/m1/l;->h:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/m1/l;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lf/i/a/a/m1/l;->c:Lf/i/a/a/m1/l$c;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lf/i/a/a/m1/l;->b:[I

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/i/a/a/m1/l;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/m1/l;->c:Lf/i/a/a/m1/l$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lf/i/a/a/m1/l$c;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/i/a/a/m1/l;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
