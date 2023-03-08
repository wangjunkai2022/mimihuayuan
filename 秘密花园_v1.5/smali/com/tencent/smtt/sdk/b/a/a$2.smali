.class public Lcom/tencent/smtt/sdk/b/a/a$2;
.super Ljava/lang/Object;
.source "BrowserListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/b/a/a;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/b/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/a$2;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a$2;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/a;)Lcom/tencent/smtt/sdk/b/a/b;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a$2;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
