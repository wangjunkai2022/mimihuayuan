.class public Lf/i/a/a/w0/v$a;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/a/a/w0/v;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lf/i/a/a/w0/v;


# direct methods
.method public constructor <init>(Lf/i/a/a/w0/v;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/w0/v$a;->b:Lf/i/a/a/w0/v;

    iput-object p2, p0, Lf/i/a/a/w0/v$a;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/w0/v$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/w0/v$a;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lf/i/a/a/w0/v$a;->b:Lf/i/a/a/w0/v;

    .line 4
    iget-object v0, v0, Lf/i/a/a/w0/v;->h:Landroid/os/ConditionVariable;

    .line 5
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/i/a/a/w0/v$a;->b:Lf/i/a/a/w0/v;

    .line 6
    iget-object v1, v1, Lf/i/a/a/w0/v;->h:Landroid/os/ConditionVariable;

    .line 7
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 8
    throw v0
.end method
