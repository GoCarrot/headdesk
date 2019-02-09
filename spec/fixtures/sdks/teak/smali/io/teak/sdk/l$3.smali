.class final Lio/teak/sdk/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Lio/teak/sdk/b/e;

.field private synthetic e:Lio/teak/sdk/l$e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lio/teak/sdk/l$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/l$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/l$3;->c:Ljava/util/Map;

    iput-object p4, p0, Lio/teak/sdk/l$3;->d:Lio/teak/sdk/b/e;

    iput-object p5, p0, Lio/teak/sdk/l$3;->e:Lio/teak/sdk/l$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 295
    iget-object v0, p0, Lio/teak/sdk/l$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/teak/sdk/l$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/l$3;->c:Ljava/util/Map;

    iget-object v3, p0, Lio/teak/sdk/l$3;->d:Lio/teak/sdk/b/e;

    iget-object v4, p0, Lio/teak/sdk/l$3;->e:Lio/teak/sdk/l$e;

    invoke-static {v0, v1, v2, v3, v4}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;Lio/teak/sdk/l$e;)V

    .line 296
    return-void
.end method
