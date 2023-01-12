.class public Lcom/comeback/data/ui/main/LauncherActivity$a;
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
    iput-object p1, p0, Lcom/comeback/data/ui/main/LauncherActivity$a;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity$a;->a:Lcom/comeback/data/ui/main/LauncherActivity;

    iget v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->e:I

    if-lez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/main/LauncherActivity;->tvName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/comeback/data/ui/main/LauncherActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v2, v0, Lcom/comeback/data/ui/main/LauncherActivity;->d:Z

    .line 5
    invoke-static {v0}, Lcom/comeback/data/ui/main/LauncherActivity;->l(Lcom/comeback/data/ui/main/LauncherActivity;)V

    :goto_0
    return-void
.end method
