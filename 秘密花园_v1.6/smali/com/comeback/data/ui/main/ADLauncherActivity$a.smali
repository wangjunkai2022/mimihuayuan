.class public Lcom/comeback/data/ui/main/ADLauncherActivity$a;
.super Ljava/lang/Object;
.source "ADLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/ADLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/ADLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/ADLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;->a:Lcom/comeback/data/ui/main/ADLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;->a:Lcom/comeback/data/ui/main/ADLauncherActivity;

    iget v1, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->c:I

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x3

    if-le v1, v5, :cond_0

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;->a:Lcom/comeback/data/ui/main/ADLauncherActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 4
    iput v1, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->c:I

    if-ltz v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    const-string v1, "39XQjNT0"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;->a:Lcom/comeback/data/ui/main/ADLauncherActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity$a;->a:Lcom/comeback/data/ui/main/ADLauncherActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/ADLauncherActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0}, Lcom/comeback/data/ui/main/MainActivity;->u(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 10
    throw v0
.end method
