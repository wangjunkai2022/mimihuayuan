.class public Lcom/youth/banner/Transformer;
.super Ljava/lang/Object;
.source "Transformer.java"


# static fields
.field public static Accordion:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static BackgroundToForeground:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static CubeIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static CubeOut:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static Default:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static DepthPage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static FlipHorizontal:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static FlipVertical:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static ForegroundToBackground:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static RotateDown:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static RotateUp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static ScaleInOut:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static Stack:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static Tablet:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static ZoomIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static ZoomOut:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field

.field public static ZoomOutSlide:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/youth/banner/transformer/DefaultTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->Default:Ljava/lang/Class;

    .line 2
    const-class v0, Lcom/youth/banner/transformer/AccordionTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->Accordion:Ljava/lang/Class;

    .line 3
    const-class v0, Lcom/youth/banner/transformer/BackgroundToForegroundTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->BackgroundToForeground:Ljava/lang/Class;

    .line 4
    const-class v0, Lcom/youth/banner/transformer/ForegroundToBackgroundTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->ForegroundToBackground:Ljava/lang/Class;

    .line 5
    const-class v0, Lcom/youth/banner/transformer/CubeInTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->CubeIn:Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/youth/banner/transformer/CubeOutTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->CubeOut:Ljava/lang/Class;

    .line 7
    const-class v0, Lcom/youth/banner/transformer/DepthPageTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->DepthPage:Ljava/lang/Class;

    .line 8
    const-class v0, Lcom/youth/banner/transformer/FlipHorizontalTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->FlipHorizontal:Ljava/lang/Class;

    .line 9
    const-class v0, Lcom/youth/banner/transformer/FlipVerticalTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->FlipVertical:Ljava/lang/Class;

    .line 10
    const-class v0, Lcom/youth/banner/transformer/RotateDownTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->RotateDown:Ljava/lang/Class;

    .line 11
    const-class v0, Lcom/youth/banner/transformer/RotateUpTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->RotateUp:Ljava/lang/Class;

    .line 12
    const-class v0, Lcom/youth/banner/transformer/ScaleInOutTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->ScaleInOut:Ljava/lang/Class;

    .line 13
    const-class v0, Lcom/youth/banner/transformer/StackTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->Stack:Ljava/lang/Class;

    .line 14
    const-class v0, Lcom/youth/banner/transformer/TabletTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->Tablet:Ljava/lang/Class;

    .line 15
    const-class v0, Lcom/youth/banner/transformer/ZoomInTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->ZoomIn:Ljava/lang/Class;

    .line 16
    const-class v0, Lcom/youth/banner/transformer/ZoomOutTranformer;

    sput-object v0, Lcom/youth/banner/Transformer;->ZoomOut:Ljava/lang/Class;

    .line 17
    const-class v0, Lcom/youth/banner/transformer/ZoomOutSlideTransformer;

    sput-object v0, Lcom/youth/banner/Transformer;->ZoomOutSlide:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
