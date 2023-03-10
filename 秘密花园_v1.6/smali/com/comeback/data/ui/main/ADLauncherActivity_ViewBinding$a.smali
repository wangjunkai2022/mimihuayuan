.class public Lcom/comeback/data/ui/main/ADLauncherActivity_ViewBinding$a;
.super Ld/c/b;
.source "ADLauncherActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/ADLauncherActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/ADLauncherActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/ADLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/ADLauncherActivity_ViewBinding;Lcom/comeback/data/ui/main/ADLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/ADLauncherActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/ADLauncherActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/ADLauncherActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/ADLauncherActivity;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/main/ADLauncherActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
