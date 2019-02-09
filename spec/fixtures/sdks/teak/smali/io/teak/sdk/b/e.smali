.class public final Lio/teak/sdk/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/b/e$c;,
        Lio/teak/sdk/b/e$a;,
        Lio/teak/sdk/b/e$b;
    }
.end annotation


# static fields
.field public static final a:Lio/teak/sdk/b/e;

.field private static c:J

.field private static p:Ljava/lang/String;

.field private static final s:Lio/teak/sdk/o$a;

.field private static final t:Lio/teak/sdk/b/d;

.field private static final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/b/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Lio/teak/sdk/b/e;

.field private static final w:Lio/teak/sdk/b/d;


# instance fields
.field public b:Lio/teak/sdk/b/g;

.field private d:Lio/teak/sdk/b/e$b;

.field private e:Lio/teak/sdk/b/e$b;

.field private final f:Lio/teak/sdk/b/d;

.field private final g:Ljava/util/concurrent/ExecutorService;

.field private final h:Ljava/util/Date;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Date;

.field private o:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Lio/teak/sdk/o$a;

.field private final r:Lio/teak/sdk/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lio/teak/sdk/b/e;->c:J

    .line 67
    new-instance v0, Lio/teak/sdk/b/e;

    const-string v1, "Null Session"

    invoke-direct {v0, v1}, Lio/teak/sdk/b/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/teak/sdk/b/e;->a:Lio/teak/sdk/b/e;

    .line 543
    new-instance v0, Lio/teak/sdk/b/e$11;

    invoke-direct {v0}, Lio/teak/sdk/b/e$11;-><init>()V

    sput-object v0, Lio/teak/sdk/b/e;->s:Lio/teak/sdk/o$a;

    .line 649
    new-instance v0, Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;-><init>()V

    sput-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    .line 650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    .line 1057
    new-instance v0, Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;-><init>()V

    sput-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0, v0}, Lio/teak/sdk/b/e;-><init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;)V

    .line 148
    return-void
.end method

.method private constructor <init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;)V
    .locals 3
    .param p1    # Lio/teak/sdk/b/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Future;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/b/e;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lio/teak/sdk/b/e$b;->b:Lio/teak/sdk/b/e$b;

    iput-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    .line 109
    iput-object v1, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    .line 110
    new-instance v0, Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    .line 111
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    .line 135
    iput-object v1, p0, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;

    .line 470
    new-instance v0, Lio/teak/sdk/b/e$8;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$8;-><init>(Lio/teak/sdk/b/e;)V

    iput-object v0, p0, Lio/teak/sdk/b/e;->q:Lio/teak/sdk/o$a;

    .line 519
    new-instance v0, Lio/teak/sdk/b/e$10;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$10;-><init>(Lio/teak/sdk/b/e;)V

    iput-object v0, p0, Lio/teak/sdk/b/e;->r:Lio/teak/sdk/o$a;

    .line 156
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/e;->h:Ljava/util/Date;

    .line 157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p1, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    .line 161
    iget-object v0, p1, Lio/teak/sdk/b/e;->m:Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b/e;->m:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/b/e;->q:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 165
    sget-object v0, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lio/teak/sdk/b/e$b;->b:Lio/teak/sdk/b/e$b;

    iput-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    .line 109
    iput-object v1, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    .line 110
    new-instance v0, Lio/teak/sdk/b/d;

    invoke-direct {v0}, Lio/teak/sdk/b/d;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    .line 111
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    .line 135
    iput-object v1, p0, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;

    .line 470
    new-instance v0, Lio/teak/sdk/b/e$8;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$8;-><init>(Lio/teak/sdk/b/e;)V

    iput-object v0, p0, Lio/teak/sdk/b/e;->q:Lio/teak/sdk/o$a;

    .line 519
    new-instance v0, Lio/teak/sdk/b/e$10;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$10;-><init>(Lio/teak/sdk/b/e;)V

    iput-object v0, p0, Lio/teak/sdk/b/e;->r:Lio/teak/sdk/o$a;

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/e;->h:Ljava/util/Date;

    .line 143
    iput-object p1, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    .line 144
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/teak/sdk/b/e;->l:Ljava/lang/String;

    return-object p1
.end method

.method static a()V
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lio/teak/sdk/b/e;->s:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 583
    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 2721
    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->lock()V

    .line 3060
    :try_start_0
    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3062
    :try_start_1
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    if-eqz v1, :cond_0

    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    invoke-direct {v1}, Lio/teak/sdk/b/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3063
    :cond_0
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 3064
    new-instance v2, Lio/teak/sdk/b/e;

    invoke-direct {v2}, Lio/teak/sdk/b/e;-><init>()V

    sput-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 3066
    if-eqz v1, :cond_3

    .line 3069
    iget-object v2, v1, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3070
    iget-object v1, v1, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    invoke-static {v1}, Lio/teak/sdk/b/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3078
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 2727
    const-string v1, "teakSessionProcessed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2729
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 2730
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2732
    :try_start_3
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_2

    .line 2733
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    sget-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v2, v2, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2736
    :cond_2
    :try_start_4
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2957
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 2958
    :goto_1
    return-void

    .line 3072
    :cond_3
    :try_start_5
    sget-object v1, Lio/teak/sdk/b/e;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3073
    sget-object v1, Lio/teak/sdk/b/e;->p:Ljava/lang/String;

    invoke-static {v1}, Lio/teak/sdk/b/e;->b(Ljava/lang/String;)V

    .line 3074
    const/4 v1, 0x0

    sput-object v1, Lio/teak/sdk/b/e;->p:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3078
    :catchall_0
    move-exception v0

    :try_start_6
    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 3079
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2957
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 2958
    throw v0

    .line 2736
    :catchall_2
    move-exception v0

    :try_start_7
    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 2737
    throw v0

    .line 2740
    :cond_4
    const-string v1, "teakSessionProcessed"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2742
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v3

    .line 2743
    const-string v1, "teakIsFirstLaunch"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2747
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 2748
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2749
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "session.attribution"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "deep_link"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2750
    new-instance v1, Lio/teak/sdk/b/e$12;

    invoke-direct {v1, v2}, Lio/teak/sdk/b/e$12;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 2801
    :goto_2
    if-eqz v2, :cond_9

    .line 3962
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v4

    .line 3964
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lio/teak/sdk/b/e$4;

    invoke-direct {v5, v2, v4}, Lio/teak/sdk/b/e$4;-><init>(Ljava/util/concurrent/Future;Lio/teak/sdk/n;)V

    invoke-direct {v1, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4045
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2809
    :goto_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2810
    if-eqz v2, :cond_e

    .line 2811
    const-string v4, "teakNotifId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2812
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2820
    :goto_4
    if-eqz v2, :cond_a

    .line 2821
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v4, "session.attribution"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "teak_notif_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 2822
    new-instance v0, Lio/teak/sdk/b/e$2;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/e$2;-><init>(Ljava/lang/String;)V

    .line 2857
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 2858
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lio/teak/sdk/b/e$3;

    invoke-direct {v5, v1, v2, v3}, Lio/teak/sdk/b/e$3;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;Lio/teak/sdk/n;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2928
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2932
    :cond_6
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v1, v1, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->b:Lio/teak/sdk/b/e$b;

    if-eq v1, v2, :cond_7

    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v1, v1, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    if-ne v1, v2, :cond_b

    .line 2933
    :cond_7
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iput-object v0, v1, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2957
    :goto_6
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto/16 :goto_1

    .line 2776
    :cond_8
    if-eqz v1, :cond_f

    .line 2778
    :try_start_8
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lio/teak/sdk/b/e$13;

    invoke-direct {v2}, Lio/teak/sdk/b/e$13;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2795
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    move-object v2, v1

    .line 2796
    goto/16 :goto_2

    :cond_9
    move-object v1, v0

    .line 2804
    goto :goto_3

    .line 2850
    :cond_a
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 2851
    goto :goto_5

    .line 2934
    :cond_b
    if-eqz v0, :cond_c

    .line 2935
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 2936
    new-instance v2, Lio/teak/sdk/b/e;

    invoke-direct {v2, v1, v0}, Lio/teak/sdk/b/e;-><init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;)V

    sput-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 2937
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2939
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    .line 2940
    sget-object v0, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    invoke-direct {v1, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2942
    :try_start_a
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto :goto_6

    :catchall_3
    move-exception v0

    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 2943
    throw v0

    .line 2946
    :cond_c
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 2947
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2949
    :try_start_b
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_d

    .line 2950
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    sget-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v2, v2, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    invoke-direct {v0, v2}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2953
    :cond_d
    :try_start_c
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto :goto_6

    :catchall_4
    move-exception v0

    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 2954
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_e
    move-object v2, v0

    goto/16 :goto_4

    :cond_f
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static a(Lio/teak/sdk/b/e$a;)V
    .locals 3
    .param p0    # Lio/teak/sdk/b/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 653
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 655
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    if-nez v0, :cond_0

    .line 656
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 658
    :try_start_1
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    new-instance v1, Lio/teak/sdk/b/e$c;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 681
    :goto_0
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 682
    return-void

    .line 660
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v1, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 661
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 681
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 682
    throw v0

    .line 663
    :cond_0
    :try_start_4
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 664
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 666
    :try_start_5
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_1

    .line 667
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/e$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 677
    :goto_1
    :try_start_6
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 669
    :cond_1
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 671
    :try_start_8
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    new-instance v2, Lio/teak/sdk/b/e$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 673
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 677
    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 678
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 673
    :catchall_3
    move-exception v0

    :try_start_b
    sget-object v2, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v2}, Lio/teak/sdk/b/d;->unlock()V

    .line 674
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lio/teak/sdk/b/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/teak/sdk/b/e$b;)Z
    .locals 10
    .param p1    # Lio/teak/sdk/b/e$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    if-ne v0, p1, :cond_0

    .line 185
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "session.same_state"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    move v0, v7

    .line 299
    :goto_0
    return v0

    .line 189
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    invoke-virtual {v0, p1}, Lio/teak/sdk/b/e$b;->a(Lio/teak/sdk/b/e$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "session.invalid_state"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "new_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    move v0, v7

    .line 191
    goto :goto_0

    .line 194
    :cond_1
    :try_start_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    sget-object v0, Lio/teak/sdk/b/e$5;->a:[I

    invoke-virtual {p1}, Lio/teak/sdk/b/e$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_2
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 276
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 303
    throw v0

    .line 205
    :pswitch_0
    :try_start_3
    iget-object v0, p0, Lio/teak/sdk/b/e;->r:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    goto :goto_1

    .line 209
    :pswitch_1
    iget-object v0, p0, Lio/teak/sdk/b/e;->r:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->b(Lio/teak/sdk/o$a;)V

    .line 211
    iget-object v0, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/b/e$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/e$1;-><init>(Lio/teak/sdk/b/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 222
    :pswitch_2
    iget-object v0, p0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 223
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :pswitch_3
    iget-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "heartbeatService"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1307
    :cond_3
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v2

    .line 1314
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1315
    iget-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/teak/sdk/b/e$6;

    invoke-direct {v1, p0, v2}, Lio/teak/sdk/b/e$6;-><init>(Lio/teak/sdk/b/e;Lio/teak/sdk/n;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 237
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    :try_start_4
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/b/e$c;

    .line 240
    iget-object v2, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 244
    :catchall_1
    move-exception v0

    :try_start_5
    sget-object v1, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 245
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    :cond_4
    :try_start_6
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 244
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    goto/16 :goto_1

    .line 249
    :pswitch_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/b/e;->n:Ljava/util/Date;

    .line 254
    iget-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/b/e;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 260
    :cond_5
    iget-object v0, p0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    if-eqz v0, :cond_2

    .line 261
    sget-object v0, Lio/teak/sdk/b/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 266
    :pswitch_5
    iget-object v0, p0, Lio/teak/sdk/b/e;->q:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->b(Lio/teak/sdk/o$a;)V

    goto/16 :goto_1

    .line 278
    :cond_6
    const-string v0, "state"

    iget-object v2, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "new_state"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "session_id"

    iget-object v2, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "session.invalid_values"

    invoke-virtual {v0, v2, v1}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 284
    sget-object v0, Lio/teak/sdk/b/e$b;->a:Lio/teak/sdk/b/e$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 302
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    move v0, v7

    .line 285
    goto/16 :goto_0

    .line 288
    :cond_7
    :try_start_8
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    iput-object v0, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    .line 289
    iput-object p1, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    .line 291
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "session.state"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    iget-object v4, v4, Lio/teak/sdk/b/e$b;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "old_state"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    iget-object v4, v4, Lio/teak/sdk/b/e$b;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "session_id"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 292
    new-instance v0, Lio/teak/sdk/c/m;

    iget-object v1, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    iget-object v2, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    invoke-direct {v0, p0, v1, v2}, Lio/teak/sdk/c/m;-><init>(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;Lio/teak/sdk/b/e$b;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 294
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->c:Lio/teak/sdk/b/e$b;

    if-ne v1, v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, v0, Lio/teak/sdk/n;->d:Lio/teak/sdk/a/e;

    if-eqz v0, :cond_8

    .line 297
    sget-object v0, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    .line 302
    iget-object v1, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    move v0, v8

    .line 299
    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Lio/teak/sdk/b/e$b;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    return-object p1
.end method

.method static synthetic b(Lio/teak/sdk/b/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/teak/sdk/b/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Lio/teak/sdk/b/e$a;)V
    .locals 3
    .param p0    # Lio/teak/sdk/b/e$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 686
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 688
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    if-nez v0, :cond_0

    .line 689
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 691
    :try_start_1
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    new-instance v1, Lio/teak/sdk/b/e$c;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 715
    :goto_0
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 716
    return-void

    .line 693
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v1, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 694
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 715
    :catchall_1
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 716
    throw v0

    .line 696
    :cond_0
    :try_start_4
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 697
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 699
    :try_start_5
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-eq v0, v2, :cond_1

    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_2

    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->e:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_2

    .line 701
    :cond_1
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/e$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 711
    :goto_1
    :try_start_6
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 703
    :cond_2
    :try_start_7
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 705
    :try_start_8
    sget-object v0, Lio/teak/sdk/b/e;->u:Ljava/util/ArrayList;

    new-instance v2, Lio/teak/sdk/b/e$c;

    invoke-direct {v2, p0}, Lio/teak/sdk/b/e$c;-><init>(Lio/teak/sdk/b/e$a;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 707
    :try_start_9
    sget-object v0, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 711
    :catchall_2
    move-exception v0

    :try_start_a
    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 712
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 707
    :catchall_3
    move-exception v0

    :try_start_b
    sget-object v2, Lio/teak/sdk/b/e;->t:Lio/teak/sdk/b/d;

    invoke-virtual {v2}, Lio/teak/sdk/b/d;->unlock()V

    .line 708
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method static synthetic b(Lio/teak/sdk/b/e;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lio/teak/sdk/b/e;->g()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 596
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 598
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    if-nez v0, :cond_0

    .line 599
    sput-object p0, Lio/teak/sdk/b/e;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :goto_0
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 624
    return-void

    .line 601
    :cond_0
    :try_start_1
    sget-object v1, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 602
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    new-instance v0, Lio/teak/sdk/b/e;

    sget-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    sget-object v3, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v3, v3, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;

    invoke-direct {v0, v2, v3}, Lio/teak/sdk/b/e;-><init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;)V

    .line 607
    sget-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    sget-object v3, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    invoke-direct {v2, v3}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    .line 608
    sget-object v2, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    sget-object v3, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    invoke-direct {v2, v3}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    .line 610
    sput-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    .line 613
    :cond_1
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iput-object p0, v0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    .line 615
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v2, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    if-ne v0, v2, :cond_2

    .line 616
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    invoke-direct {v0}, Lio/teak/sdk/b/e;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    :cond_2
    :try_start_3
    iget-object v0, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 624
    throw v0

    .line 619
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, v1, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 620
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static b()Z
    .locals 2

    .prologue
    .line 586
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 588
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    invoke-direct {v0}, Lio/teak/sdk/b/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    iget-object v0, v0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v1, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 590
    :goto_0
    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 588
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v0

    sget-object v1, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 591
    throw v0
.end method

.method static synthetic c(Lio/teak/sdk/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Lio/teak/sdk/b/d;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lio/teak/sdk/b/e;->w:Lio/teak/sdk/b/d;

    return-object v0
.end method

.method static synthetic d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    return-object v0
.end method

.method static synthetic e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    return-object v0
.end method

.method static synthetic e()Lio/teak/sdk/b/e;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lio/teak/sdk/b/e;->v:Lio/teak/sdk/b/e;

    return-object v0
.end method

.method static synthetic f(Lio/teak/sdk/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v1, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 172
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lio/teak/sdk/b/e;->n:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lio/teak/sdk/b/e;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    sget-object v0, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;

    invoke-direct {p0, v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$b;)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Lio/teak/sdk/b/e$b;

    sget-object v1, Lio/teak/sdk/b/e$b;->h:Lio/teak/sdk/b/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 177
    :goto_0
    iget-object v1, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 175
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/e;->f:Lio/teak/sdk/b/d;

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 178
    throw v0
.end method

.method static synthetic g(Lio/teak/sdk/b/e;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->o:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 356
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/b/e$7;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/b/e$7;-><init>(Lio/teak/sdk/b/e;Lio/teak/sdk/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method static synthetic h(Lio/teak/sdk/b/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lio/teak/sdk/b/e;)V
    .locals 2

    .prologue
    .line 62
    .line 2494
    iget-object v0, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/b/e$9;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/e$9;-><init>(Lio/teak/sdk/b/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method static synthetic j(Lio/teak/sdk/b/e;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/teak/sdk/b/e;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lio/teak/sdk/b/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1101
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    .line 2093
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2094
    const-string v6, "startDate"

    iget-object v7, p0, Lio/teak/sdk/b/e;->h:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1103
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
