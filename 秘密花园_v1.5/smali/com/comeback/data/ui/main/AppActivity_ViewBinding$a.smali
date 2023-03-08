.class public Lcom/comeback/data/ui/main/AppActivity_ViewBinding$a;
.super Ld/c/b;
.source "AppActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/AppActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/AppActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/AppActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/AppActivity_ViewBinding;Lcom/comeback/data/ui/main/AppActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/AppActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/AppActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/main/AppActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/AppActivity;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/comeback/data/ui/main/AppActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
