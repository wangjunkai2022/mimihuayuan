.class public Lcom/comeback/data/ui/main/LauncherActivity$b;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/main/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/main/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity$b;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity$b;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    iget v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/comeback/data/ui/main/LauncherActivity;->g:I

    const-wide/16 v3, 0x4b0

    const/4 v5, 0x2

    if-le v1, v5, :cond_0

    .line 2
    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity$b;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 4
    iput v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->g:I

    if-lez v2, :cond_1

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    const-string v1, "39XQjNT0"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity$b;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity$b;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvCount:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/comeback/data/ui/main/LauncherActivity;->o()V

    :goto_0
    return-void
.end method
