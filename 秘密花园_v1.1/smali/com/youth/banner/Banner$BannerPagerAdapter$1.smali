.class public Lcom/youth/banner/Banner$BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youth/banner/Banner$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/youth/banner/Banner$BannerPagerAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$1;->this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

    iput p2, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$1;->this$1:Lcom/youth/banner/Banner$BannerPagerAdapter;

    iget-object p1, p1, Lcom/youth/banner/Banner$BannerPagerAdapter;->this$0:Lcom/youth/banner/Banner;

    iget-object v0, p1, Lcom/youth/banner/Banner;->tag:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/youth/banner/Banner;->access$800(Lcom/youth/banner/Banner;)Lcom/youth/banner/listener/OnBannerClickListener;

    move-result-object p1

    iget v0, p0, Lcom/youth/banner/Banner$BannerPagerAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/youth/banner/listener/OnBannerClickListener;->OnBannerClick(I)V

    return-void
.end method
