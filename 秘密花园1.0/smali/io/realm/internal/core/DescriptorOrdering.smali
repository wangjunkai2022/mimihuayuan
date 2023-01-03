.class public Lio/realm/internal/core/DescriptorOrdering;
.super Ljava/lang/Object;
.source "DescriptorOrdering.java"

# interfaces
.implements Lg/a/f1/i;


# static fields
.field public static final b:J


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/internal/core/DescriptorOrdering;->nativeGetFinalizerMethodPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/core/DescriptorOrdering;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/realm/internal/core/DescriptorOrdering;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->a:J

    return-void
.end method

.method public static native nativeCreate()J
.end method

.method public static native nativeGetFinalizerMethodPtr()J
.end method

.method public static native nativeIsEmpty(J)Z
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .line 1
    sget-wide v0, Lio/realm/internal/core/DescriptorOrdering;->b:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/realm/internal/core/DescriptorOrdering;->a:J

    return-wide v0
.end method
