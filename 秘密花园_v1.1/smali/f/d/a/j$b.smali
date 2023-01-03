.class public Lf/d/a/j$b;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lf/d/a/p/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/d/a/p/n;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic b:Lf/d/a/j;


# direct methods
.method public constructor <init>(Lf/d/a/j;Lf/d/a/p/n;)V
    .locals 0
    .param p1    # Lf/d/a/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lf/d/a/j$b;->b:Lf/d/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/d/a/j$b;->a:Lf/d/a/p/n;

    return-void
.end method
