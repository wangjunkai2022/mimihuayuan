.class public Lf/d/a/j$a;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/d/a/j;


# direct methods
.method public constructor <init>(Lf/d/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/j$a;->a:Lf/d/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d/a/j$a;->a:Lf/d/a/j;

    iget-object v1, v0, Lf/d/a/j;->c:Lf/d/a/p/h;

    invoke-interface {v1, v0}, Lf/d/a/p/h;->a(Lf/d/a/p/i;)V

    return-void
.end method
