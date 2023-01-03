.class public Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$c;
.super Ld/c/b;
.source "DNActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/dn/DNActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/dn/DNActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/DNActivity_ViewBinding;Lcom/comeback/data/ui/dn/DNActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$c;->c:Lcom/comeback/data/ui/dn/DNActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/dn/DNActivity_ViewBinding$c;->c:Lcom/comeback/data/ui/dn/DNActivity;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
