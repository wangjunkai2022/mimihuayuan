.class public Lf/i/a/a/k1/a$a;
.super Ljava/lang/Object;
.source "DefaultTimeBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/a/a/k1/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/k1/a;


# direct methods
.method public constructor <init>(Lf/i/a/a/k1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/a$a;->a:Lf/i/a/a/k1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/k1/a$a;->a:Lf/i/a/a/k1/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lf/i/a/a/k1/a;->access$000(Lf/i/a/a/k1/a;Z)V

    return-void
.end method
