.class public Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$a;
.super Ld/c/b;
.source "LauncherActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/main/LauncherActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/main/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding;Lcom/comeback/data/ui/main/LauncherActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/LauncherActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/main/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/comeback/data/ui/main/LauncherActivity;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
