.class public final Lcom/youth/banner/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Banner:[I

.field public static final Banner_banner_default_image:I = 0x0

.field public static final Banner_banner_layout:I = 0x1

.field public static final Banner_delay_time:I = 0x2

.field public static final Banner_image_scale_type:I = 0x3

.field public static final Banner_indicator_drawable_selected:I = 0x4

.field public static final Banner_indicator_drawable_unselected:I = 0x5

.field public static final Banner_indicator_height:I = 0x6

.field public static final Banner_indicator_margin:I = 0x7

.field public static final Banner_indicator_width:I = 0x8

.field public static final Banner_is_auto_play:I = 0x9

.field public static final Banner_scroll_time:I = 0xa

.field public static final Banner_title_background:I = 0xb

.field public static final Banner_title_height:I = 0xc

.field public static final Banner_title_textcolor:I = 0xd

.field public static final Banner_title_textsize:I = 0xe


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youth/banner/R$styleable;->Banner:[I

    return-void

    :array_0
    .array-data 4
        0x7f04003b
        0x7f04003c
        0x7f0400be
        0x7f040132
        0x7f040136
        0x7f040137
        0x7f040138
        0x7f040139
        0x7f04013a
        0x7f04013e
        0x7f0401f9
        0x7f0402c2
        0x7f0402c3
        0x7f0402c4
        0x7f0402c5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
