.class public Lg/a/m1/a$e;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/m1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lg/a/m1/a$h<",
        "Lg/a/j0;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg/a/m1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lg/a/m1/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/a/m1/a$h;-><init>(Lg/a/m1/a$e;)V

    return-object v0
.end method
