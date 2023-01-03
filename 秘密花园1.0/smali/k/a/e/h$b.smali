.class public final Lk/a/e/h$b;
.super Lk/a/c/a;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/c/a<",
        "Lk/a/e/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/e/h;


# direct methods
.method public constructor <init>(Lk/a/e/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lk/a/c/a;-><init>(I)V

    .line 2
    iput-object p1, p0, Lk/a/e/h$b;->a:Lk/a/e/h;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/e/h$b;->a:Lk/a/e/h;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lk/a/e/h;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method
