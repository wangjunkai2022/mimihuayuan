.class public final Lcom/umeng/commonsdk/internal/utils/j$1;
.super Ljava/lang/Object;
.source "SystemLayerUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/internal/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->b()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->c()I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->d()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->e()I

    .line 5
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->f()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->d()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 7
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->e()I

    .line 8
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/internal/utils/j;->a(J)J

    .line 10
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->g()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/internal/utils/j;->b(J)J

    .line 12
    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->h()I

    .line 13
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/j;->i()V

    :cond_4
    return-void
.end method
