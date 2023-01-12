.class public Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ChannelAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->b:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->a:Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter$Holder;->b:Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;

    .line 3
    iget-boolean p1, p1, Lcom/comeback/data/ui/hgl/adapter/ChannelAdapter;->d:Z

    .line 4
    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/hgl/LiveListActivity;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
