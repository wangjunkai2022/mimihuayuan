.class public Lcom/tencent/smtt/sdk/b/a/c$1;
.super Ljava/lang/Object;
.source "TBSActivityPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/b/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/b/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/b/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/b/a/c;->a(Lcom/tencent/smtt/sdk/b/a/c;)Lcom/tencent/smtt/sdk/b/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/b/a/a;->a()Lcom/tencent/smtt/sdk/b/a/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/b/a/b;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/b/a/c;->b(Lcom/tencent/smtt/sdk/b/a/c;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/b/a/b;->b()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.tencent.mtt"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChannelID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PosID"

    const-string v3, "4"

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/b/a/c;->c(Lcom/tencent/smtt/sdk/b/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-static {v2}, Lcom/tencent/smtt/sdk/b/a/c;->c(Lcom/tencent/smtt/sdk/b/a/c;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "big_brother_source_key"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    sget-object v0, Lcom/tencent/smtt/sdk/b/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    sget-object v0, Lcom/tencent/smtt/sdk/b/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/ValueCallback;

    const-string v1, "always"

    invoke-interface {v0, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/b/a/c;->a(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/c$1;->a:Lcom/tencent/smtt/sdk/b/a/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    :goto_0
    return-void
.end method
