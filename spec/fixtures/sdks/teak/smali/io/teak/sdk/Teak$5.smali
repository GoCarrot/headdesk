.class final Lio/teak/sdk/Teak$5;
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
    .line 359
    iput-object p1, p0, Lio/teak/sdk/Teak$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/teak/sdk/Teak$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 362
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, p0, Lio/teak/sdk/Teak$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/Teak$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/TeakInstance;->setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method
