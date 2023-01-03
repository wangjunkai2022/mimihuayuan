.class public final Li/m0/d/m$a;
.super Ljava/lang/ref/WeakReference;
.source "Transmitter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/m0/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Li/m0/d/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li/m0/d/m;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Li/m0/d/m$a;->a:Ljava/lang/Object;

    return-void
.end method
