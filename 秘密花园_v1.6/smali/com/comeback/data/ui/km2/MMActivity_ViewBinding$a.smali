.class public Lcom/comeback/data/ui/km2/MMActivity_ViewBinding$a;
.super Ld/c/b;
.source "MMActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/km2/MMActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/km2/MMActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/km2/MMActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/MMActivity_ViewBinding;Lcom/comeback/data/ui/km2/MMActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/km2/MMActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km2/MMActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/km2/MMActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/km2/MMActivity;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/km2/AreaChooseActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    .line 3
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
