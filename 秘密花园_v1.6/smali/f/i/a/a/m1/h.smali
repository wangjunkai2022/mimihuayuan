.class public interface abstract Lf/i/a/a/m1/h;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final a:Lf/i/a/a/m1/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/m1/b0;

    invoke-direct {v0}, Lf/i/a/a/m1/b0;-><init>()V

    sput-object v0, Lf/i/a/a/m1/h;->a:Lf/i/a/a/m1/h;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lf/i/a/a/m1/c0;
    .param p2    # Landroid/os/Handler$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c()J
.end method
