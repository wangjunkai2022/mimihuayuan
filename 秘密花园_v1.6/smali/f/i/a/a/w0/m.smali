.class public interface abstract Lf/i/a/a/w0/m;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/w0/m$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lf/i/a/a/w0/m;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Ljava/nio/ByteBuffer;
.end method

.method public abstract c()V
.end method

.method public abstract d(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract e()I
.end method

.method public abstract f(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/w0/m$a;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract isActive()Z
.end method

.method public abstract reset()V
.end method
