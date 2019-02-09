.class final Lio/teak/sdk/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lio/teak/sdk/b/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/teak/sdk/b/a;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lio/teak/sdk/b/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/b/a$1;->b:Lio/teak/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 81
    sget-object v1, Lio/teak/sdk/b/a;->a:Ljava/util/Map;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lio/teak/sdk/b/a;->a:Ljava/util/Map;

    iget-object v2, p0, Lio/teak/sdk/b/a$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/teak/sdk/b/a$1;->b:Lio/teak/sdk/b/a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
