.class public abstract Lcom/bumptech/glide/GeneratedAppGlideModule;
.super Lf/d/a/q/a;
.source "GeneratedAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/q/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getExcludedModuleClasses()Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public getRequestManagerFactory()Lf/d/a/p/l$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
