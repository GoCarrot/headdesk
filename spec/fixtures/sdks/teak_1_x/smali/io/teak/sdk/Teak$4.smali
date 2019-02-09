.class final Lio/teak/sdk/Teak$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lio/teak/sdk/Teak$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/Teak$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 308
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v1, p0, Lio/teak/sdk/Teak$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/Teak$4;->b:Ljava/lang/String;

    .line 1190
    new-instance v3, Lio/teak/sdk/o$4;

    invoke-direct {v3, v0, v1, v2}, Lio/teak/sdk/o$4;-><init>(Lio/teak/sdk/o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$a;)V

    .line 309
    return-void
.end method
